// Generated by JFlex 1.9.1 http://jflex.de/  (tweaked for IntelliJ platform)
// source: JassLexer.flex

package guru.xgm.language.jass.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.language.jass.psi.JassTypes.*;


public class _JassLexer implements FlexLexer {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;
  public static final int RAWVAL_STATE = 2;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = {
     0,  0,  1, 1
  };

  /**
   * Top-level table for translating characters to character classes
   */
  private static final int [] ZZ_CMAP_TOP = zzUnpackcmap_top();

  private static final String ZZ_CMAP_TOP_PACKED_0 =
    "\1\0\37\u0100\1\u0200\267\u0100\10\u0300\u1020\u0100";

  private static int [] zzUnpackcmap_top() {
    int [] result = new int[4352];
    int offset = 0;
    offset = zzUnpackcmap_top(ZZ_CMAP_TOP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackcmap_top(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /**
   * Second-level tables for translating characters to character classes
   */
  private static final int [] ZZ_CMAP_BLOCKS = zzUnpackcmap_blocks();

  private static final String ZZ_CMAP_BLOCKS_PACKED_0 =
    "\11\0\1\1\1\2\3\3\22\0\1\1\1\4\1\5"+
    "\1\0\1\6\2\0\1\7\1\10\1\11\1\12\1\13"+
    "\1\14\1\15\1\16\1\17\1\20\11\21\2\0\1\22"+
    "\1\23\1\24\2\0\32\25\1\26\1\27\1\30\1\0"+
    "\1\31\1\0\1\32\1\33\1\34\1\35\1\36\1\37"+
    "\1\40\1\41\1\42\1\25\1\43\1\44\1\25\1\45"+
    "\1\46\1\47\1\25\1\50\1\51\1\52\1\53\1\54"+
    "\1\55\1\56\1\57\1\25\12\0\1\60\u01a2\0\2\60"+
    "\326\0\u0100\60";

  private static int [] zzUnpackcmap_blocks() {
    int [] result = new int[1024];
    int offset = 0;
    offset = zzUnpackcmap_blocks(ZZ_CMAP_BLOCKS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackcmap_blocks(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /**
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\2\0\1\1\1\2\3\1\1\3\1\4\1\5\1\6"+
    "\1\7\1\10\1\11\1\1\1\12\2\13\1\14\1\15"+
    "\1\16\1\17\1\20\1\21\17\17\1\22\1\23\1\24"+
    "\1\0\1\25\1\0\1\26\1\27\1\30\1\0\1\31"+
    "\1\32\1\33\15\17\1\34\5\17\1\35\7\17\1\36"+
    "\22\17\1\37\3\17\1\40\7\17\1\41\1\42\2\17"+
    "\1\43\14\17\1\44\2\17\1\45\1\46\3\17\1\47"+
    "\1\50\1\51\1\52\2\17\1\53\3\17\1\54\3\17"+
    "\1\55\4\17\1\56\4\17\1\57\2\17\1\60\7\17"+
    "\1\61\1\17\1\62\1\17\1\63\1\64\1\65\3\17"+
    "\1\66\1\17\1\67\1\17\1\70\1\71\1\72\1\73"+
    "\1\74\2\17\1\75\1\76\3\17\1\77\1\100";

  private static int [] zzUnpackAction() {
    int [] result = new int[198];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /**
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\61\0\142\0\223\0\304\0\365\0\u0126\0\142"+
    "\0\142\0\142\0\142\0\142\0\142\0\142\0\u0157\0\u0188"+
    "\0\u01b9\0\u01ea\0\u021b\0\u024c\0\u027d\0\u02ae\0\142\0\142"+
    "\0\u02df\0\u0310\0\u0341\0\u0372\0\u03a3\0\u03d4\0\u0405\0\u0436"+
    "\0\u0467\0\u0498\0\u04c9\0\u04fa\0\u052b\0\u055c\0\u058d\0\142"+
    "\0\142\0\142\0\365\0\142\0\u05be\0\u0126\0\u0157\0\u05ef"+
    "\0\u0126\0\142\0\142\0\142\0\u0620\0\u0651\0\u0682\0\u06b3"+
    "\0\u06e4\0\u0715\0\u0746\0\u0777\0\u07a8\0\u07d9\0\u080a\0\u083b"+
    "\0\u086c\0\u02ae\0\u089d\0\u08ce\0\u08ff\0\u0930\0\u0961\0\u02ae"+
    "\0\u0992\0\u09c3\0\u09f4\0\u0a25\0\u0a56\0\u0a87\0\u0ab8\0\u02ae"+
    "\0\u0ae9\0\u0b1a\0\u0b4b\0\u0b7c\0\u0bad\0\u0bde\0\u0c0f\0\u0c40"+
    "\0\u0c71\0\u0ca2\0\u0cd3\0\u0d04\0\u0d35\0\u0d66\0\u0d97\0\u0dc8"+
    "\0\u0df9\0\u0e2a\0\u0e5b\0\u0e8c\0\u0ebd\0\u0eee\0\u02ae\0\u0f1f"+
    "\0\u0f50\0\u0f81\0\u0fb2\0\u0fe3\0\u1014\0\u1045\0\u02ae\0\u02ae"+
    "\0\u1076\0\u10a7\0\u10d8\0\u1109\0\u113a\0\u116b\0\u119c\0\u11cd"+
    "\0\u11fe\0\u122f\0\u1260\0\u1291\0\u12c2\0\u12f3\0\u1324\0\u02ae"+
    "\0\u1355\0\u1386\0\u02ae\0\u02ae\0\u13b7\0\u13e8\0\u1419\0\u02ae"+
    "\0\u02ae\0\u02ae\0\u02ae\0\u144a\0\u147b\0\u02ae\0\u14ac\0\u14dd"+
    "\0\u150e\0\u02ae\0\u153f\0\u1570\0\u15a1\0\u02ae\0\u15d2\0\u1603"+
    "\0\u1634\0\u1665\0\u02ae\0\u1696\0\u16c7\0\u16f8\0\u1729\0\u02ae"+
    "\0\u175a\0\u178b\0\u02ae\0\u17bc\0\u17ed\0\u181e\0\u184f\0\u1880"+
    "\0\u18b1\0\u18e2\0\u02ae\0\u1913\0\u02ae\0\u1944\0\u1975\0\u02ae"+
    "\0\u02ae\0\u19a6\0\u19d7\0\u1a08\0\u02ae\0\u1a39\0\u02ae\0\u1a6a"+
    "\0\u02ae\0\u02ae\0\u02ae\0\u02ae\0\u02ae\0\u1a9b\0\u1acc\0\u02ae"+
    "\0\u02ae\0\u1afd\0\u1b2e\0\u1b5f\0\u02ae\0\u02ae";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[198];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length() - 1;
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /**
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpacktrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\1\3\3\4\1\5\1\6\1\7\1\10\1\11\1\12"+
    "\1\13\1\14\1\15\1\16\1\17\1\20\1\21\1\22"+
    "\1\23\1\24\1\25\1\26\1\27\1\3\1\30\1\26"+
    "\1\31\1\32\1\33\1\34\1\35\1\36\1\37\1\40"+
    "\1\41\1\26\1\42\1\43\1\44\1\26\1\45\1\46"+
    "\1\47\5\26\1\3\7\50\1\51\51\50\62\0\3\4"+
    "\100\0\1\52\35\0\5\53\1\54\21\53\1\55\31\53"+
    "\20\0\2\56\3\0\1\56\4\0\26\56\21\0\2\57"+
    "\56\0\1\60\57\0\1\57\1\0\2\22\34\0\1\61"+
    "\20\0\1\57\1\0\2\22\62\0\1\62\60\0\1\63"+
    "\60\0\1\64\55\0\2\26\3\0\1\26\3\0\27\26"+
    "\21\0\2\26\3\0\1\26\3\0\14\26\1\65\2\26"+
    "\1\66\7\26\21\0\2\26\3\0\1\26\3\0\15\26"+
    "\1\67\11\26\21\0\2\26\3\0\1\26\3\0\1\26"+
    "\1\70\13\26\1\71\11\26\21\0\2\26\3\0\1\26"+
    "\3\0\5\26\1\72\21\26\21\0\2\26\3\0\1\26"+
    "\3\0\13\26\1\73\1\74\10\26\1\75\1\26\21\0"+
    "\2\26\3\0\1\26\3\0\1\26\1\76\20\26\1\77"+
    "\4\26\21\0\2\26\3\0\1\26\3\0\13\26\1\100"+
    "\13\26\21\0\2\26\3\0\1\26\3\0\1\26\1\101"+
    "\25\26\21\0\2\26\3\0\1\26\3\0\6\26\1\102"+
    "\5\26\1\103\12\26\21\0\2\26\3\0\1\26\3\0"+
    "\15\26\1\104\11\26\21\0\2\26\3\0\1\26\3\0"+
    "\1\26\1\105\13\26\1\106\4\26\1\107\4\26\21\0"+
    "\2\26\3\0\1\26\3\0\17\26\1\110\7\26\21\0"+
    "\2\26\3\0\1\26\3\0\5\26\1\111\21\26\21\0"+
    "\2\26\3\0\1\26\3\0\5\26\1\112\13\26\1\113"+
    "\5\26\21\0\2\26\3\0\1\26\3\0\1\26\1\114"+
    "\6\26\1\115\6\26\1\116\6\26\1\117\1\0\2\53"+
    "\2\0\54\53\1\0\2\60\1\0\56\60\20\0\2\26"+
    "\3\0\1\26\3\0\4\26\1\120\22\26\21\0\2\26"+
    "\3\0\1\26\3\0\17\26\1\121\7\26\21\0\2\26"+
    "\3\0\1\26\3\0\15\26\1\122\11\26\21\0\2\26"+
    "\3\0\1\26\3\0\13\26\1\123\13\26\21\0\2\26"+
    "\3\0\1\26\3\0\4\26\1\124\7\26\1\125\12\26"+
    "\21\0\2\26\3\0\1\26\3\0\2\26\1\126\24\26"+
    "\21\0\2\26\3\0\1\26\3\0\20\26\1\127\6\26"+
    "\21\0\2\26\3\0\1\26\3\0\4\26\1\130\22\26"+
    "\21\0\2\26\3\0\1\26\3\0\11\26\1\131\7\26"+
    "\1\132\5\26\21\0\2\26\3\0\1\26\3\0\13\26"+
    "\1\133\13\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\134\12\26\21\0\2\26\3\0\1\26\3\0\15\26"+
    "\1\135\11\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\136\12\26\21\0\2\26\3\0\1\26\3\0\21\26"+
    "\1\137\5\26\21\0\2\26\3\0\1\26\3\0\3\26"+
    "\1\140\11\26\1\141\11\26\21\0\2\26\3\0\1\26"+
    "\3\0\21\26\1\142\5\26\21\0\2\26\3\0\1\26"+
    "\3\0\21\26\1\143\5\26\21\0\2\26\3\0\1\26"+
    "\3\0\13\26\1\144\13\26\21\0\2\26\3\0\1\26"+
    "\3\0\1\26\1\145\17\26\1\146\5\26\21\0\2\26"+
    "\3\0\1\26\3\0\21\26\1\147\5\26\21\0\2\26"+
    "\3\0\1\26\3\0\17\26\1\150\7\26\21\0\2\26"+
    "\3\0\1\26\3\0\12\26\1\151\14\26\21\0\2\26"+
    "\3\0\1\26\3\0\5\26\1\152\21\26\21\0\2\26"+
    "\3\0\1\26\3\0\22\26\1\153\4\26\21\0\2\26"+
    "\3\0\1\26\3\0\16\26\1\154\10\26\21\0\2\26"+
    "\3\0\1\26\3\0\1\26\1\155\25\26\21\0\2\26"+
    "\3\0\1\26\3\0\13\26\1\156\13\26\21\0\2\26"+
    "\3\0\1\26\3\0\13\26\1\157\13\26\21\0\2\26"+
    "\3\0\1\26\3\0\5\26\1\160\21\26\21\0\2\26"+
    "\3\0\1\26\3\0\20\26\1\161\6\26\21\0\2\26"+
    "\3\0\1\26\3\0\22\26\1\162\4\26\21\0\2\26"+
    "\3\0\1\26\3\0\5\26\1\163\21\26\21\0\2\26"+
    "\3\0\1\26\3\0\6\26\1\164\1\165\1\26\1\166"+
    "\1\26\1\167\13\26\21\0\2\26\3\0\1\26\3\0"+
    "\21\26\1\170\5\26\21\0\2\26\3\0\1\26\3\0"+
    "\5\26\1\171\21\26\21\0\2\26\3\0\1\26\3\0"+
    "\20\26\1\172\6\26\21\0\2\26\3\0\1\26\3\0"+
    "\3\26\1\173\23\26\21\0\2\26\3\0\1\26\3\0"+
    "\2\26\1\174\24\26\21\0\2\26\3\0\1\26\3\0"+
    "\4\26\1\175\22\26\21\0\2\26\3\0\1\26\3\0"+
    "\5\26\1\176\21\26\21\0\2\26\3\0\1\26\3\0"+
    "\1\26\1\177\25\26\21\0\2\26\3\0\1\26\3\0"+
    "\16\26\1\200\10\26\21\0\2\26\3\0\1\26\3\0"+
    "\11\26\1\201\15\26\21\0\2\26\3\0\1\26\3\0"+
    "\10\26\1\202\16\26\21\0\2\26\3\0\1\26\3\0"+
    "\13\26\1\203\13\26\21\0\2\26\3\0\1\26\3\0"+
    "\13\26\1\204\13\26\21\0\2\26\3\0\1\26\3\0"+
    "\22\26\1\205\4\26\21\0\2\26\3\0\1\26\3\0"+
    "\11\26\1\206\15\26\21\0\2\26\3\0\1\26\3\0"+
    "\5\26\1\207\21\26\21\0\2\26\3\0\1\26\3\0"+
    "\14\26\1\210\12\26\21\0\2\26\3\0\1\26\3\0"+
    "\5\26\1\211\21\26\21\0\2\26\3\0\1\26\3\0"+
    "\5\26\1\212\21\26\21\0\2\26\3\0\1\26\3\0"+
    "\26\26\1\213\21\0\2\26\3\0\1\26\3\0\5\26"+
    "\1\214\21\26\21\0\2\26\3\0\1\26\3\0\21\26"+
    "\1\215\5\26\21\0\2\26\3\0\1\26\3\0\7\26"+
    "\1\216\17\26\21\0\2\26\3\0\1\26\3\0\11\26"+
    "\1\217\15\26\21\0\2\26\3\0\1\26\3\0\22\26"+
    "\1\220\4\26\21\0\2\26\3\0\1\26\3\0\13\26"+
    "\1\221\13\26\21\0\2\26\3\0\1\26\3\0\6\26"+
    "\1\222\20\26\21\0\2\26\3\0\1\26\3\0\15\26"+
    "\1\223\11\26\21\0\2\26\3\0\1\26\3\0\24\26"+
    "\1\224\2\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\225\12\26\21\0\2\26\3\0\1\26\3\0\5\26"+
    "\1\226\21\26\21\0\2\26\3\0\1\26\3\0\21\26"+
    "\1\227\5\26\21\0\2\26\3\0\1\26\3\0\1\26"+
    "\1\230\25\26\21\0\2\26\3\0\1\26\3\0\13\26"+
    "\1\231\13\26\21\0\2\26\3\0\1\26\3\0\7\26"+
    "\1\232\17\26\21\0\2\26\3\0\1\26\3\0\13\26"+
    "\1\233\13\26\21\0\2\26\3\0\1\26\3\0\23\26"+
    "\1\234\3\26\21\0\2\26\3\0\1\26\3\0\11\26"+
    "\1\235\15\26\21\0\2\26\3\0\1\26\3\0\17\26"+
    "\1\236\7\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\237\12\26\21\0\2\26\3\0\1\26\3\0\20\26"+
    "\1\240\6\26\21\0\2\26\3\0\1\26\3\0\1\26"+
    "\1\241\25\26\21\0\2\26\3\0\1\26\3\0\1\26"+
    "\1\242\25\26\21\0\2\26\3\0\1\26\3\0\6\26"+
    "\1\243\20\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\244\12\26\21\0\2\26\3\0\1\26\3\0\15\26"+
    "\1\245\11\26\21\0\2\26\3\0\1\26\3\0\15\26"+
    "\1\246\11\26\21\0\2\26\3\0\1\26\3\0\10\26"+
    "\1\247\16\26\21\0\2\26\3\0\1\26\3\0\4\26"+
    "\1\250\22\26\21\0\2\26\3\0\1\26\3\0\11\26"+
    "\1\251\15\26\21\0\2\26\3\0\1\26\3\0\13\26"+
    "\1\252\13\26\21\0\2\26\3\0\1\26\3\0\5\26"+
    "\1\253\21\26\21\0\2\26\3\0\1\26\3\0\5\26"+
    "\1\254\21\26\21\0\2\26\3\0\1\26\3\0\5\26"+
    "\1\255\21\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\256\12\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\257\12\26\21\0\2\26\3\0\1\26\3\0\7\26"+
    "\1\260\17\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\261\12\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\262\12\26\21\0\2\26\3\0\1\26\3\0\3\26"+
    "\1\263\23\26\21\0\2\26\3\0\1\26\3\0\2\26"+
    "\1\264\24\26\21\0\2\26\3\0\1\26\3\0\16\26"+
    "\1\265\10\26\21\0\2\26\3\0\1\26\3\0\5\26"+
    "\1\266\21\26\21\0\2\26\3\0\1\26\3\0\20\26"+
    "\1\267\6\26\21\0\2\26\3\0\1\26\3\0\15\26"+
    "\1\270\11\26\21\0\2\26\3\0\1\26\3\0\20\26"+
    "\1\271\6\26\21\0\2\26\3\0\1\26\3\0\17\26"+
    "\1\272\7\26\21\0\2\26\3\0\1\26\3\0\7\26"+
    "\1\273\17\26\21\0\2\26\3\0\1\26\3\0\20\26"+
    "\1\274\6\26\21\0\2\26\3\0\1\26\3\0\21\26"+
    "\1\275\5\26\21\0\2\26\3\0\1\26\3\0\21\26"+
    "\1\276\5\26\21\0\2\26\3\0\1\26\3\0\1\26"+
    "\1\277\25\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\300\12\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\301\12\26\21\0\2\26\3\0\1\26\3\0\11\26"+
    "\1\302\15\26\21\0\2\26\3\0\1\26\3\0\13\26"+
    "\1\303\13\26\21\0\2\26\3\0\1\26\3\0\15\26"+
    "\1\304\11\26\21\0\2\26\3\0\1\26\3\0\20\26"+
    "\1\305\6\26\21\0\2\26\3\0\1\26\3\0\14\26"+
    "\1\306\12\26\1\0";

  private static int [] zzUnpacktrans() {
    int [] result = new int[7056];
    int offset = 0;
    offset = zzUnpacktrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpacktrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String[] ZZ_ERROR_MSG = {
    "Unknown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state {@code aState}
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\2\0\1\11\4\1\7\11\10\1\2\11\17\1\3\11"+
    "\1\0\1\11\1\0\3\1\1\0\3\11\222\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[198];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private CharSequence zzBuffer = "";

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  private boolean zzAtEOF;

  /** Number of newlines encountered up to the start of the matched text. */
  @SuppressWarnings("unused")
  private int yyline;

  /** Number of characters from the last newline up to the start of the matched text. */
  @SuppressWarnings("unused")
  protected int yycolumn;

  /** Number of characters up to the start of the matched text. */
  @SuppressWarnings("unused")
  private long yychar;

  /** Whether the scanner is currently at the beginning of a line. */
  @SuppressWarnings("unused")
  private boolean zzAtBOL = true;

  /** Whether the user-EOF-code has already been executed. */
  @SuppressWarnings("unused")
  private boolean zzEOFDone;

  /* user code: */
  public _JassLexer() {
    this((java.io.Reader)null);
  }


  /**
   * Creates a new scanner
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public _JassLexer(java.io.Reader in) {
    this.zzReader = in;
  }


  /** Returns the maximum size of the scanner buffer, which limits the size of tokens. */
  private int zzMaxBufferLen() {
    return Integer.MAX_VALUE;
  }

  /**  Whether the scanner buffer can grow to accommodate a larger token. */
  private boolean zzCanGrow() {
    return true;
  }

  /**
   * Translates raw input code points to DFA table row
   */
  private static int zzCMap(int input) {
    int offset = input & 255;
    return offset == input ? ZZ_CMAP_BLOCKS[offset] : ZZ_CMAP_BLOCKS[ZZ_CMAP_TOP[input >> 8] | offset];
  }

  public final int getTokenStart() {
    return zzStartRead;
  }

  public final int getTokenEnd() {
    return getTokenStart() + yylength();
  }

  public void reset(CharSequence buffer, int start, int end, int initialState) {
    zzBuffer = buffer;
    zzCurrentPos = zzMarkedPos = zzStartRead = start;
    zzAtEOF  = false;
    zzAtBOL = true;
    zzEndRead = end;
    yybegin(initialState);
  }

  /**
   * Refills the input buffer.
   *
   * @return      {@code false}, iff there was new input.
   *
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {
    return true;
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final CharSequence yytext() {
    return zzBuffer.subSequence(zzStartRead, zzMarkedPos);
  }


  /**
   * Returns the character at position {@code pos} from the
   * matched text.
   *
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch.
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer.charAt(zzStartRead+pos);
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occurred while scanning.
   *
   * In a wellformed scanner (no or only correct usage of
   * yypushback(int) and a match-all fallback rule) this method
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  }


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public IElementType advance() throws java.io.IOException
  {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    CharSequence zzBufferL = zzBuffer;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;

      zzState = ZZ_LEXSTATE[zzLexicalState];

      // set up zzAction for empty match case:
      int zzAttributes = zzAttrL[zzState];
      if ( (zzAttributes & 1) == 1 ) {
        zzAction = zzState;
      }


      zzForAction: {
        while (true) {

          if (zzCurrentPosL < zzEndReadL) {
            zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL);
            zzCurrentPosL += Character.charCount(zzInput);
          }
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL);
              zzCurrentPosL += Character.charCount(zzInput);
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMap(zzInput) ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
        zzAtEOF = true;
            switch (zzLexicalState) {
            case RAWVAL_STATE: {
              yybegin(YYINITIAL); return RAWVAL;
            }  // fall though
            case 199: break;
            default:
        return null;
        }
      }
      else {
        switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
          case 1:
            { return BAD_CHARACTER;
            }
          // fall through
          case 65: break;
          case 2:
            { return WHITE_SPACE;
            }
          // fall through
          case 66: break;
          case 3:
            { yybegin(RAWVAL_STATE);
            }
          // fall through
          case 67: break;
          case 4:
            { return LPAREN;
            }
          // fall through
          case 68: break;
          case 5:
            { return RPAREN;
            }
          // fall through
          case 69: break;
          case 6:
            { return MUL;
            }
          // fall through
          case 70: break;
          case 7:
            { return PLUS;
            }
          // fall through
          case 71: break;
          case 8:
            { return COMMA;
            }
          // fall through
          case 72: break;
          case 9:
            { return MINUS;
            }
          // fall through
          case 73: break;
          case 10:
            { return DIV;
            }
          // fall through
          case 74: break;
          case 11:
            { return INTVAL;
            }
          // fall through
          case 75: break;
          case 12:
            { return LT;
            }
          // fall through
          case 76: break;
          case 13:
            { return EQ;
            }
          // fall through
          case 77: break;
          case 14:
            { return GT;
            }
          // fall through
          case 78: break;
          case 15:
            { return ID;
            }
          // fall through
          case 79: break;
          case 16:
            { return LBRACK;
            }
          // fall through
          case 80: break;
          case 17:
            { return RBRACK;
            }
          // fall through
          case 81: break;
          case 18:
            { /*ignore*/
            }
          // fall through
          case 82: break;
          case 19:
            { yybegin(YYINITIAL); return RAWVAL;
            }
          // fall through
          case 83: break;
          case 20:
            { return NEQ;
            }
          // fall through
          case 84: break;
          case 21:
            { return STRVAL;
            }
          // fall through
          case 85: break;
          case 22:
            { return HEXVAL;
            }
          // fall through
          case 86: break;
          case 23:
            { return REALVAL;
            }
          // fall through
          case 87: break;
          case 24:
            { return SINGLE_LINE_COMMENT;
            }
          // fall through
          case 88: break;
          case 25:
            { return LT_EQ;
            }
          // fall through
          case 89: break;
          case 26:
            { return EQ_EQ;
            }
          // fall through
          case 90: break;
          case 27:
            { return GT_EQ;
            }
          // fall through
          case 91: break;
          case 28:
            { return IF;
            }
          // fall through
          case 92: break;
          case 29:
            { return OR;
            }
          // fall through
          case 93: break;
          case 30:
            { return AND;
            }
          // fall through
          case 94: break;
          case 31:
            { return NOT;
            }
          // fall through
          case 95: break;
          case 32:
            { return SET;
            }
          // fall through
          case 96: break;
          case 33:
            { return CALL;
            }
          // fall through
          case 97: break;
          case 34:
            { return CODE;
            }
          // fall through
          case 98: break;
          case 35:
            { return ELSE;
            }
          // fall through
          case 99: break;
          case 36:
            { return LOOP;
            }
          // fall through
          case 100: break;
          case 37:
            { return NULL;
            }
          // fall through
          case 101: break;
          case 38:
            { return REAL;
            }
          // fall through
          case 102: break;
          case 39:
            { return THEN;
            }
          // fall through
          case 103: break;
          case 40:
            { return TRUE;
            }
          // fall through
          case 104: break;
          case 41:
            { return TYPE;
            }
          // fall through
          case 105: break;
          case 42:
            { return ARRAY;
            }
          // fall through
          case 106: break;
          case 43:
            { return DEBUG;
            }
          // fall through
          case 107: break;
          case 44:
            { return ENDIF;
            }
          // fall through
          case 108: break;
          case 45:
            { return FALSE;
            }
          // fall through
          case 109: break;
          case 46:
            { return LOCAL;
            }
          // fall through
          case 110: break;
          case 47:
            { return TAKES;
            }
          // fall through
          case 111: break;
          case 48:
            { return ELSEIF;
            }
          // fall through
          case 112: break;
          case 49:
            { return HANDLE;
            }
          // fall through
          case 113: break;
          case 50:
            { return NATIVE;
            }
          // fall through
          case 114: break;
          case 51:
            { return RETURN;
            }
          // fall through
          case 115: break;
          case 52:
            { return STRING;
            }
          // fall through
          case 116: break;
          case 53:
            { return BOOLEAN;
            }
          // fall through
          case 117: break;
          case 54:
            { return ENDLOOP;
            }
          // fall through
          case 118: break;
          case 55:
            { return EXTENDS;
            }
          // fall through
          case 119: break;
          case 56:
            { return GLOBALS;
            }
          // fall through
          case 120: break;
          case 57:
            { return INTEGER;
            }
          // fall through
          case 121: break;
          case 58:
            { return NOTHING;
            }
          // fall through
          case 122: break;
          case 59:
            { return RETURNS;
            }
          // fall through
          case 123: break;
          case 60:
            { return CONSTANT;
            }
          // fall through
          case 124: break;
          case 61:
            { return EXITWHEN;
            }
          // fall through
          case 125: break;
          case 62:
            { return FUNCTION;
            }
          // fall through
          case 126: break;
          case 63:
            { return ENDGLOBALS;
            }
          // fall through
          case 127: break;
          case 64:
            { return ENDFUNCTION;
            }
          // fall through
          case 128: break;
          default:
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}
