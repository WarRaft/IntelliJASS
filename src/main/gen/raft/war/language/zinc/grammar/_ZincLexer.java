// Generated by JFlex 1.9.1 http://jflex.de/  (tweaked for IntelliJ platform)
// source: ZincLexer.flex

package raft.war.language.zinc.grammar;

import com.intellij.psi.tree.IElementType;
import com.intellij.lexer.FlexLexer;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static raft.war.language.zinc.psi.ZincTypes.*;


public class _ZincLexer implements FlexLexer {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;
  public static final int COMMENT = 2;

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
    "\1\0\1\6\1\0\1\7\1\10\1\11\1\12\1\13"+
    "\1\14\1\15\1\16\1\17\1\20\1\21\11\22\1\0"+
    "\1\23\1\24\1\25\1\26\2\0\6\27\24\30\1\31"+
    "\1\32\1\33\1\0\1\30\1\0\1\34\1\35\1\36"+
    "\1\37\1\40\1\41\1\42\1\43\1\44\1\30\1\45"+
    "\1\46\1\47\1\50\1\51\1\52\1\53\1\54\1\55"+
    "\1\56\1\57\1\60\1\61\1\62\1\63\1\30\1\64"+
    "\1\65\1\66\7\0\1\67\u01a2\0\2\67\326\0\u0100\67";

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
    "\2\0\1\1\1\2\1\3\4\1\1\4\1\5\1\6"+
    "\1\7\1\10\1\11\1\12\1\13\2\14\1\15\1\16"+
    "\1\17\1\20\1\21\1\22\1\23\21\21\1\24\1\1"+
    "\1\25\3\26\1\27\1\0\1\30\1\0\1\31\1\32"+
    "\1\0\1\33\1\34\1\35\1\36\1\37\1\40\1\41"+
    "\1\42\1\43\1\0\1\44\1\45\1\46\4\21\1\47"+
    "\5\21\1\50\15\21\1\51\1\52\1\53\7\21\1\54"+
    "\3\21\1\55\20\21\1\56\2\21\1\57\7\21\1\60"+
    "\3\21\1\61\5\21\1\62\2\21\1\63\1\21\1\64"+
    "\1\65\16\21\1\66\3\21\1\67\2\21\1\70\3\21"+
    "\1\71\1\21\1\72\1\73\1\74\1\75\1\76\2\21"+
    "\1\77\1\100\1\101\1\21\1\102\1\21\1\103\1\104"+
    "\1\105\1\106";

  private static int [] zzUnpackAction() {
    int [] result = new int[196];
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
    "\0\0\0\70\0\160\0\250\0\340\0\u0118\0\u0150\0\u0188"+
    "\0\u01c0\0\160\0\160\0\u01f8\0\u0230\0\160\0\u0268\0\u02a0"+
    "\0\u02d8\0\u0310\0\u0348\0\160\0\u0380\0\u03b8\0\u03f0\0\u0428"+
    "\0\160\0\160\0\u0460\0\u0498\0\u04d0\0\u0508\0\u0540\0\u0578"+
    "\0\u05b0\0\u05e8\0\u0620\0\u0658\0\u0690\0\u06c8\0\u0700\0\u0738"+
    "\0\u0770\0\u07a8\0\u07e0\0\160\0\u0818\0\160\0\160\0\u0850"+
    "\0\u0888\0\160\0\u0118\0\160\0\u08c0\0\u0150\0\160\0\u01c0"+
    "\0\160\0\160\0\160\0\160\0\160\0\u02a0\0\160\0\u08f8"+
    "\0\160\0\u0150\0\160\0\160\0\160\0\u0930\0\u0968\0\u09a0"+
    "\0\u09d8\0\u0428\0\u0a10\0\u0a48\0\u0a80\0\u0ab8\0\u0af0\0\u0428"+
    "\0\u0b28\0\u0b60\0\u0b98\0\u0bd0\0\u0c08\0\u0c40\0\u0c78\0\u0cb0"+
    "\0\u0ce8\0\u0d20\0\u0d58\0\u0d90\0\u0dc8\0\160\0\160\0\160"+
    "\0\u0e00\0\u0e38\0\u0e70\0\u0ea8\0\u0ee0\0\u0f18\0\u0f50\0\u0428"+
    "\0\u0f88\0\u0fc0\0\u0ff8\0\u0428\0\u1030\0\u1068\0\u10a0\0\u10d8"+
    "\0\u1110\0\u1148\0\u1180\0\u11b8\0\u11f0\0\u1228\0\u1260\0\u1298"+
    "\0\u12d0\0\u1308\0\u1340\0\u1378\0\u0428\0\u13b0\0\u13e8\0\u0428"+
    "\0\u1420\0\u1458\0\u1490\0\u14c8\0\u1500\0\u1538\0\u1570\0\u0428"+
    "\0\u15a8\0\u15e0\0\u1618\0\u0428\0\u1650\0\u1688\0\u16c0\0\u16f8"+
    "\0\u1730\0\u0428\0\u1768\0\u17a0\0\u0428\0\u17d8\0\u0428\0\u0428"+
    "\0\u1810\0\u1848\0\u1880\0\u18b8\0\u18f0\0\u1928\0\u1960\0\u1998"+
    "\0\u19d0\0\u1a08\0\u1a40\0\u1a78\0\u1ab0\0\u1ae8\0\u0428\0\u1b20"+
    "\0\u1b58\0\u1b90\0\u0428\0\u1bc8\0\u1c00\0\u0428\0\u1c38\0\u1c70"+
    "\0\u1ca8\0\u0428\0\u1ce0\0\u0428\0\u0428\0\u0428\0\u0428\0\u0428"+
    "\0\u1d18\0\u1d50\0\u0428\0\u0428\0\u0428\0\u1d88\0\u0428\0\u1dc0"+
    "\0\u0428\0\u0428\0\u0428\0\u0428";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[196];
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
    "\1\23\1\24\1\25\1\26\1\27\2\30\1\31\1\3"+
    "\1\32\1\30\1\33\1\34\1\35\1\36\1\37\1\30"+
    "\1\40\1\41\1\42\1\43\1\44\1\45\1\46\1\47"+
    "\1\30\1\50\1\51\1\52\2\30\1\53\2\30\1\54"+
    "\1\55\1\56\1\3\13\57\1\60\4\57\1\61\47\57"+
    "\71\0\3\4\111\0\1\62\42\0\5\63\1\64\24\63"+
    "\1\65\35\63\21\0\2\66\4\0\1\66\4\0\6\66"+
    "\35\0\1\67\60\0\10\70\1\71\57\70\25\0\1\72"+
    "\67\0\1\73\67\0\1\74\1\75\62\0\2\76\60\0"+
    "\1\77\4\0\1\100\4\0\1\101\61\0\1\76\1\0"+
    "\2\23\37\0\1\102\24\0\1\76\1\0\2\23\72\0"+
    "\1\103\67\0\1\104\67\0\1\105\63\0\2\30\4\0"+
    "\2\30\3\0\30\30\25\0\2\30\4\0\2\30\3\0"+
    "\15\30\1\106\2\30\1\107\7\30\25\0\2\30\4\0"+
    "\2\30\3\0\15\30\1\110\12\30\25\0\2\30\4\0"+
    "\2\30\3\0\4\30\1\111\10\30\1\112\12\30\25\0"+
    "\2\30\4\0\2\30\3\0\12\30\1\113\15\30\25\0"+
    "\2\30\4\0\2\30\3\0\1\114\14\30\1\115\5\30"+
    "\1\116\4\30\25\0\2\30\4\0\2\30\3\0\1\117"+
    "\27\30\25\0\2\30\4\0\2\30\3\0\5\30\1\120"+
    "\6\30\1\121\13\30\25\0\2\30\4\0\2\30\3\0"+
    "\4\30\1\122\23\30\25\0\2\30\4\0\2\30\3\0"+
    "\10\30\1\123\17\30\25\0\2\30\4\0\2\30\3\0"+
    "\4\30\1\124\23\30\25\0\2\30\4\0\2\30\3\0"+
    "\15\30\1\125\5\30\1\126\4\30\25\0\2\30\4\0"+
    "\2\30\3\0\16\30\1\127\11\30\25\0\2\30\4\0"+
    "\2\30\3\0\20\30\1\130\2\30\1\131\4\30\25\0"+
    "\2\30\4\0\2\30\3\0\4\30\1\132\23\30\25\0"+
    "\2\30\4\0\2\30\3\0\22\30\1\133\5\30\25\0"+
    "\2\30\4\0\2\30\3\0\20\30\1\134\7\30\25\0"+
    "\2\30\4\0\2\30\3\0\7\30\1\135\20\30\71\0"+
    "\1\136\22\0\1\137\62\0\1\140\54\0\2\63\2\0"+
    "\63\63\1\0\2\100\1\0\65\100\21\0\2\30\4\0"+
    "\2\30\3\0\15\30\1\141\12\30\25\0\2\30\4\0"+
    "\2\30\3\0\4\30\1\142\23\30\25\0\2\30\4\0"+
    "\2\30\3\0\3\30\1\143\10\30\1\144\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\1\30\1\145\26\30\25\0"+
    "\2\30\4\0\2\30\3\0\21\30\1\146\6\30\25\0"+
    "\2\30\4\0\2\30\3\0\12\30\1\147\15\30\25\0"+
    "\2\30\4\0\2\30\3\0\20\30\1\150\7\30\25\0"+
    "\2\30\4\0\2\30\3\0\14\30\1\151\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\14\30\1\152\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\22\30\1\153\5\30\25\0"+
    "\2\30\4\0\2\30\3\0\27\30\1\154\25\0\2\30"+
    "\4\0\2\30\3\0\1\30\1\155\26\30\25\0\2\30"+
    "\4\0\2\30\3\0\22\30\1\156\5\30\25\0\2\30"+
    "\4\0\2\30\3\0\22\30\1\157\5\30\25\0\2\30"+
    "\4\0\2\30\3\0\12\30\1\160\15\30\25\0\2\30"+
    "\4\0\2\30\3\0\22\30\1\161\5\30\25\0\2\30"+
    "\4\0\2\30\3\0\10\30\1\162\17\30\25\0\2\30"+
    "\4\0\2\30\3\0\1\30\1\163\26\30\25\0\2\30"+
    "\4\0\2\30\3\0\1\164\16\30\1\165\2\30\1\166"+
    "\5\30\25\0\2\30\4\0\2\30\3\0\1\167\17\30"+
    "\1\170\7\30\25\0\2\30\4\0\2\30\3\0\23\30"+
    "\1\171\4\30\25\0\2\30\4\0\2\30\3\0\10\30"+
    "\1\172\17\30\25\0\2\30\4\0\2\30\3\0\12\30"+
    "\1\173\15\30\25\0\2\30\4\0\2\30\3\0\1\174"+
    "\27\30\25\0\2\30\4\0\2\30\3\0\4\30\1\175"+
    "\23\30\25\0\2\30\4\0\2\30\3\0\21\30\1\176"+
    "\6\30\25\0\2\30\4\0\2\30\3\0\23\30\1\177"+
    "\4\30\25\0\2\30\4\0\2\30\3\0\4\30\1\200"+
    "\23\30\25\0\2\30\4\0\2\30\3\0\21\30\1\201"+
    "\6\30\25\0\2\30\4\0\2\30\3\0\2\30\1\202"+
    "\25\30\25\0\2\30\4\0\2\30\3\0\3\30\1\203"+
    "\24\30\25\0\2\30\4\0\2\30\3\0\4\30\1\204"+
    "\23\30\25\0\2\30\4\0\2\30\3\0\20\30\1\205"+
    "\7\30\25\0\2\30\4\0\2\30\3\0\7\30\1\206"+
    "\20\30\25\0\2\30\4\0\2\30\3\0\7\30\1\207"+
    "\20\30\25\0\2\30\4\0\2\30\3\0\12\30\1\210"+
    "\15\30\25\0\2\30\4\0\2\30\3\0\10\30\1\211"+
    "\17\30\25\0\2\30\4\0\2\30\3\0\24\30\1\212"+
    "\3\30\25\0\2\30\4\0\2\30\3\0\12\30\1\213"+
    "\15\30\25\0\2\30\4\0\2\30\3\0\12\30\1\214"+
    "\15\30\25\0\2\30\4\0\2\30\3\0\23\30\1\215"+
    "\4\30\25\0\2\30\4\0\2\30\3\0\23\30\1\216"+
    "\4\30\25\0\2\30\4\0\2\30\3\0\22\30\1\217"+
    "\5\30\25\0\2\30\4\0\2\30\3\0\10\30\1\220"+
    "\12\30\1\221\4\30\25\0\2\30\4\0\2\30\3\0"+
    "\4\30\1\222\23\30\25\0\2\30\4\0\2\30\3\0"+
    "\12\30\1\223\15\30\25\0\2\30\4\0\2\30\3\0"+
    "\4\30\1\224\23\30\25\0\2\30\4\0\2\30\3\0"+
    "\11\30\1\225\16\30\25\0\2\30\4\0\2\30\3\0"+
    "\22\30\1\226\5\30\25\0\2\30\4\0\2\30\3\0"+
    "\6\30\1\227\21\30\25\0\2\30\4\0\2\30\3\0"+
    "\4\30\1\230\23\30\25\0\2\30\4\0\2\30\3\0"+
    "\22\30\1\231\5\30\25\0\2\30\4\0\2\30\3\0"+
    "\12\30\1\232\15\30\25\0\2\30\4\0\2\30\3\0"+
    "\6\30\1\233\21\30\25\0\2\30\4\0\2\30\3\0"+
    "\1\234\27\30\25\0\2\30\4\0\2\30\3\0\15\30"+
    "\1\235\12\30\25\0\2\30\4\0\2\30\3\0\10\30"+
    "\1\236\17\30\25\0\2\30\4\0\2\30\3\0\15\30"+
    "\1\237\12\30\25\0\2\30\4\0\2\30\3\0\1\240"+
    "\27\30\25\0\2\30\4\0\2\30\3\0\10\30\1\241"+
    "\17\30\25\0\2\30\4\0\2\30\3\0\10\30\1\242"+
    "\17\30\25\0\2\30\4\0\2\30\3\0\20\30\1\243"+
    "\7\30\25\0\2\30\4\0\2\30\3\0\10\30\1\244"+
    "\17\30\25\0\2\30\4\0\2\30\3\0\14\30\1\245"+
    "\13\30\25\0\2\30\4\0\2\30\3\0\2\30\1\246"+
    "\25\30\25\0\2\30\4\0\2\30\3\0\4\30\1\247"+
    "\23\30\25\0\2\30\4\0\2\30\3\0\1\250\27\30"+
    "\25\0\2\30\4\0\2\30\3\0\1\251\27\30\25\0"+
    "\2\30\4\0\2\30\3\0\10\30\1\252\17\30\25\0"+
    "\2\30\4\0\2\30\3\0\4\30\1\253\23\30\25\0"+
    "\2\30\4\0\2\30\3\0\4\30\1\254\23\30\25\0"+
    "\2\30\4\0\2\30\3\0\20\30\1\255\7\30\25\0"+
    "\2\30\4\0\2\30\3\0\3\30\1\256\24\30\25\0"+
    "\2\30\4\0\2\30\3\0\14\30\1\257\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\14\30\1\260\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\22\30\1\261\5\30\25\0"+
    "\2\30\4\0\2\30\3\0\2\30\1\262\25\30\25\0"+
    "\2\30\4\0\2\30\3\0\20\30\1\263\7\30\25\0"+
    "\2\30\4\0\2\30\3\0\14\30\1\264\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\2\30\1\265\25\30\25\0"+
    "\2\30\4\0\2\30\3\0\6\30\1\266\21\30\25\0"+
    "\2\30\4\0\2\30\3\0\22\30\1\267\5\30\25\0"+
    "\2\30\4\0\2\30\3\0\14\30\1\270\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\14\30\1\271\13\30\25\0"+
    "\2\30\4\0\2\30\3\0\15\30\1\272\12\30\25\0"+
    "\2\30\4\0\2\30\3\0\20\30\1\273\7\30\25\0"+
    "\2\30\4\0\2\30\3\0\27\30\1\274\25\0\2\30"+
    "\4\0\2\30\3\0\6\30\1\275\21\30\25\0\2\30"+
    "\4\0\2\30\3\0\1\276\27\30\25\0\2\30\4\0"+
    "\2\30\3\0\4\30\1\277\23\30\25\0\2\30\4\0"+
    "\2\30\3\0\4\30\1\300\23\30\25\0\2\30\4\0"+
    "\2\30\3\0\22\30\1\301\5\30\25\0\2\30\4\0"+
    "\2\30\3\0\14\30\1\302\13\30\25\0\2\30\4\0"+
    "\2\30\3\0\12\30\1\303\15\30\25\0\2\30\4\0"+
    "\2\30\3\0\21\30\1\304\6\30\4\0";

  private static int [] zzUnpacktrans() {
    int [] result = new int[7672];
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
    "\2\0\1\11\6\1\2\11\2\1\1\11\5\1\1\11"+
    "\4\1\2\11\21\1\1\11\1\1\2\11\2\1\1\11"+
    "\1\0\1\11\1\0\1\1\1\11\1\0\5\11\1\1"+
    "\1\11\1\1\1\11\1\0\3\11\30\1\3\11\144\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[196];
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
  public _ZincLexer() {
    this((java.io.Reader)null);
  }
  int commentDepth = 0;


  /**
   * Creates a new scanner
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public _ZincLexer(java.io.Reader in) {
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
            case COMMENT: {
              yybegin(YYINITIAL);
        return BLOCK_COMMENT;
            }  // fall though
            case 197: break;
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
          case 71: break;
          case 2:
            { return WHITE_SPACE;
            }
          // fall through
          case 72: break;
          case 3:
            { return NOT;
            }
          // fall through
          case 73: break;
          case 4:
            { return LPAREN;
            }
          // fall through
          case 74: break;
          case 5:
            { return RPAREN;
            }
          // fall through
          case 75: break;
          case 6:
            { return MUL;
            }
          // fall through
          case 76: break;
          case 7:
            { return PLUS;
            }
          // fall through
          case 77: break;
          case 8:
            { return COMMA;
            }
          // fall through
          case 78: break;
          case 9:
            { return MINUS;
            }
          // fall through
          case 79: break;
          case 10:
            { return DOT;
            }
          // fall through
          case 80: break;
          case 11:
            { return DIV;
            }
          // fall through
          case 81: break;
          case 12:
            { return INTVAL;
            }
          // fall through
          case 82: break;
          case 13:
            { return SEMI;
            }
          // fall through
          case 83: break;
          case 14:
            { return LT;
            }
          // fall through
          case 84: break;
          case 15:
            { return EQ;
            }
          // fall through
          case 85: break;
          case 16:
            { return GT;
            }
          // fall through
          case 86: break;
          case 17:
            { return ID;
            }
          // fall through
          case 87: break;
          case 18:
            { return LBRACK;
            }
          // fall through
          case 88: break;
          case 19:
            { return RBRACK;
            }
          // fall through
          case 89: break;
          case 20:
            { return LBRACE;
            }
          // fall through
          case 90: break;
          case 21:
            { return RBRACE;
            }
          // fall through
          case 91: break;
          case 22:
            { /*ignore*/
            }
          // fall through
          case 92: break;
          case 23:
            { return NEQ;
            }
          // fall through
          case 93: break;
          case 24:
            { return STRVAL;
            }
          // fall through
          case 94: break;
          case 25:
            { return HEXVAL;
            }
          // fall through
          case 95: break;
          case 26:
            { return AND_AND;
            }
          // fall through
          case 96: break;
          case 27:
            { return RAWVAL;
            }
          // fall through
          case 97: break;
          case 28:
            { return MUL_EQ;
            }
          // fall through
          case 98: break;
          case 29:
            { return PLUS_EQ;
            }
          // fall through
          case 99: break;
          case 30:
            { return MINUS_EQ;
            }
          // fall through
          case 100: break;
          case 31:
            { return MINUS_GT;
            }
          // fall through
          case 101: break;
          case 32:
            { return REALVAL;
            }
          // fall through
          case 102: break;
          case 33:
            { yybegin(COMMENT);
          commentDepth = 1;
          return BLOCK_COMMENT;
            }
          // fall through
          case 103: break;
          case 34:
            { return LINE_COMMENT;
            }
          // fall through
          case 104: break;
          case 35:
            { return DIV_EQ;
            }
          // fall through
          case 105: break;
          case 36:
            { return LT_EQ;
            }
          // fall through
          case 106: break;
          case 37:
            { return EQ_EQ;
            }
          // fall through
          case 107: break;
          case 38:
            { return GT_EQ;
            }
          // fall through
          case 108: break;
          case 39:
            { return DO;
            }
          // fall through
          case 109: break;
          case 40:
            { return IF;
            }
          // fall through
          case 110: break;
          case 41:
            { return OR_OR;
            }
          // fall through
          case 111: break;
          case 42:
            { commentDepth--;
          if(commentDepth == 0) {
              yybegin(YYINITIAL);
          }
          return BLOCK_COMMENT;
            }
          // fall through
          case 112: break;
          case 43:
            { commentDepth++;
            return BLOCK_COMMENT;
            }
          // fall through
          case 113: break;
          case 44:
            { return FOR;
            }
          // fall through
          case 114: break;
          case 45:
            { return KEY;
            }
          // fall through
          case 115: break;
          case 46:
            { return CODE;
            }
          // fall through
          case 116: break;
          case 47:
            { return ELSE;
            }
          // fall through
          case 117: break;
          case 48:
            { return NULL;
            }
          // fall through
          case 118: break;
          case 49:
            { return REAL;
            }
          // fall through
          case 119: break;
          case 50:
            { return TRUE;
            }
          // fall through
          case 120: break;
          case 51:
            { return BREAK;
            }
          // fall through
          case 121: break;
          case 52:
            { return DEBUG;
            }
          // fall through
          case 122: break;
          case 53:
            { return FALSE;
            }
          // fall through
          case 123: break;
          case 54:
            { return WHILE;
            }
          // fall through
          case 124: break;
          case 55:
            { return HANDLE;
            }
          // fall through
          case 125: break;
          case 56:
            { return METHOD;
            }
          // fall through
          case 126: break;
          case 57:
            { return PUBLIC;
            }
          // fall through
          case 127: break;
          case 58:
            { return RETURN;
            }
          // fall through
          case 128: break;
          case 59:
            { return STATIC;
            }
          // fall through
          case 129: break;
          case 60:
            { return STRING;
            }
          // fall through
          case 130: break;
          case 61:
            { return STRUCT;
            }
          // fall through
          case 131: break;
          case 62:
            { return BOOLEAN;
            }
          // fall through
          case 132: break;
          case 63:
            { return INTEGER;
            }
          // fall through
          case 133: break;
          case 64:
            { return LIBRARY;
            }
          // fall through
          case 134: break;
          case 65:
            { return NOTHING;
            }
          // fall through
          case 135: break;
          case 66:
            { return PRIVATE;
            }
          // fall through
          case 136: break;
          case 67:
            { return CONSTANT;
            }
          // fall through
          case 137: break;
          case 68:
            { return FUNCTION;
            }
          // fall through
          case 138: break;
          case 69:
            { return OPTIONAL;
            }
          // fall through
          case 139: break;
          case 70:
            { return REQUIRES;
            }
          // fall through
          case 140: break;
          default:
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}
