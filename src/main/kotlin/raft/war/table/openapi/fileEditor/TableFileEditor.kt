package raft.war.table.openapi.fileEditor

import com.intellij.codeHighlighting.BackgroundEditorHighlighter
import com.intellij.openapi.editor.colors.EditorColorsManager
import com.intellij.openapi.editor.colors.EditorColorsScheme
import com.intellij.openapi.fileEditor.FileEditor
import com.intellij.openapi.fileEditor.FileEditorState
import com.intellij.openapi.fileEditor.FileEditorStateLevel
import com.intellij.openapi.project.Project
import com.intellij.openapi.util.Key
import com.intellij.openapi.util.UserDataHolderBase
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.openapi.vfs.readText
import com.intellij.ui.components.JBScrollPane
import com.intellij.ui.table.JBTable
import com.intellij.util.ui.JBUI
import raft.war.table.parser.Slk
import java.beans.PropertyChangeListener
import javax.swing.*
import javax.swing.event.TableModelEvent
import javax.swing.table.DefaultTableModel
import javax.swing.table.TableRowSorter


// https://plugins.jetbrains.com/docs/intellij/editor-components.html#providing-completion
class TableFileEditor(project: Project, private val file: VirtualFile) : UserDataHolderBase(), FileEditor {

    private val panel: JPanel

    init {
        val content = file.readText()

        panel = JPanel()
        panel.layout = BoxLayout(panel, BoxLayout.Y_AXIS)

        val head: MutableList<String> = mutableListOf()
        val data: MutableList<Array<String>> = mutableListOf()

        try {
            val slk = Slk(content)
            val h = slk.list.removeAt(0)
            head.addAll(h.map { it.toString() })
            for (s in slk.list) {
                data.add(s.map { it.toString() }.toTypedArray())
            }
        } catch (e: Exception) {
            val pane = JTextPane()
            pane.text = e.message
            pane.margin = JBUI.insets(10)
            panel.add(pane)
        }


        val tableModel = DefaultTableModel(data.toTypedArray(), head.toTypedArray())
        tableModel.addTableModelListener { e ->
            if (e.type == TableModelEvent.UPDATE) {
                val row = e.firstRow
                val column = e.column
                val newValue = tableModel.getValueAt(row, column)
                println("Изменена ячейка в строке $row, столбце $column. Новое значение: $newValue")
            }
        }

        val table = JBTable(tableModel)
        table.emptyText
        table.autoResizeMode = JTable.AUTO_RESIZE_OFF
        resizeColumnWidth(table)
        table.rowSorter = TableRowSorter(tableModel)

        val editorColorsScheme: EditorColorsScheme = EditorColorsManager.getInstance().globalScheme
        val backgroundColor = editorColorsScheme.defaultBackground
        table.background = backgroundColor
        table.foreground = editorColorsScheme.defaultForeground
        table.gridColor = backgroundColor

        val scrollPane =
            JBScrollPane(
                table,
                JBScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
                JBScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED
            )

        panel.add(scrollPane)
    }

    private fun resizeColumnWidth(table: JTable) {
        val columnModel = table.columnModel
        for (columnIndex in 0 until table.columnCount) {
            val column = columnModel.getColumn(columnIndex)
            var width = 50 // Минимальная ширина колонки
            val renderer = table.tableHeader.defaultRenderer
            val comp = renderer.getTableCellRendererComponent(table, column.headerValue, false, false, 0, 0)
            width = comp.preferredSize.width.coerceAtLeast(width)
            for (rowIndex in 0 until table.rowCount) {
                val r = table.getCellRenderer(rowIndex, columnIndex)
                val c = table.prepareRenderer(r, rowIndex, columnIndex)
                width = (c.preferredSize.width + table.intercellSpacing.width).coerceAtLeast(width)
            }
            column.preferredWidth = width + 30
        }
    }

    override fun getBackgroundHighlighter(): BackgroundEditorHighlighter? = null

    override fun dispose() {}

    override fun getComponent(): JComponent = panel

    override fun getPreferredFocusedComponent(): JComponent = panel

    override fun <T : Any?> getUserData(key: Key<T>): T? = null

    override fun <T : Any?> putUserData(key: Key<T>, value: T?) {}

    override fun getName(): String = TableFileEditorProvider.ID

    override fun setState(state: FileEditorState) {}

    override fun getState(level: FileEditorStateLevel): FileEditorState = FileEditorState.INSTANCE

    override fun isModified(): Boolean = false

    override fun isValid(): Boolean = true

    override fun addPropertyChangeListener(listener: PropertyChangeListener) {}

    override fun removePropertyChangeListener(listener: PropertyChangeListener) {}

    override fun getFile(): VirtualFile = file
}
