// Generated by JFlex 1.9.1 http://jflex.de/  (tweaked for IntelliJ platform)
// source: _AngelScriptLexer.flex

package guru.xgm.angelscript.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.angelscript.psi.AngelScriptTypes.*;


public class _AngelScriptLexer implements FlexLexer {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = {
     0, 0
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
    "\1\6\1\7\1\0\1\10\1\11\1\12\1\13\1\14"+
    "\1\15\1\16\1\17\1\20\1\21\1\22\1\23\1\24"+
    "\1\25\1\26\1\27\1\30\1\27\1\31\1\27\1\32"+
    "\1\33\1\34\1\35\1\36\1\37\1\40\1\41\2\42"+
    "\1\43\2\42\7\44\1\45\14\44\1\46\1\47\1\50"+
    "\1\0\1\44\1\0\1\51\1\52\1\53\1\54\1\55"+
    "\1\56\1\57\1\60\1\61\1\44\1\62\1\63\1\64"+
    "\1\65\1\66\1\67\1\44\1\70\1\71\1\72\1\73"+
    "\1\74\1\75\1\76\1\77\1\44\1\100\1\101\1\102"+
    "\1\103\6\0\1\104\u01a2\0\2\104\326\0\u0100\104";

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
    "\1\0\1\1\1\2\1\3\1\1\1\4\3\1\1\5"+
    "\1\6\1\7\1\10\1\11\1\12\1\13\1\14\2\15"+
    "\1\16\1\17\1\20\1\21\1\22\1\23\1\24\2\25"+
    "\1\26\1\27\22\25\1\30\1\1\1\31\1\32\1\33"+
    "\1\0\1\34\1\0\1\35\1\36\2\0\1\37\1\40"+
    "\1\41\1\42\1\43\1\44\1\45\1\0\1\46\1\47"+
    "\1\0\1\50\1\51\1\52\1\53\12\25\1\54\11\25"+
    "\1\55\1\56\16\25\1\57\1\34\1\45\1\0\1\60"+
    "\21\25\1\61\1\25\1\62\3\25\1\63\2\25\1\64"+
    "\4\25\1\65\10\25\1\66\2\25\1\67\1\70\1\25"+
    "\1\71\1\25\1\72\3\25\1\73\14\25\1\74\2\25"+
    "\1\75\11\25\1\76\1\77\1\100\2\25\1\101\1\102"+
    "\1\103\1\104\4\25\1\105\1\106\1\107\4\25\1\110"+
    "\1\111\1\112\1\113\16\25\1\114\1\115\2\25\1\116"+
    "\4\25\1\117\7\25\1\120\1\121\1\122\1\123\1\124"+
    "\1\125\1\126\1\127\1\25\1\130\2\25\1\131\1\25"+
    "\1\132\1\133\2\25\1\134\2\25\1\135\1\136\1\137"+
    "\1\140\1\25\1\141\1\142\1\25\1\143\1\144";

  private static int [] zzUnpackAction() {
    int [] result = new int[280];
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
    "\0\0\0\105\0\212\0\317\0\u0114\0\105\0\u0159\0\u019e"+
    "\0\u01e3\0\105\0\105\0\u0228\0\u026d\0\105\0\u02b2\0\u02f7"+
    "\0\u033c\0\u0381\0\u03c6\0\u040b\0\105\0\u0450\0\u0495\0\u04da"+
    "\0\105\0\105\0\u051f\0\u0564\0\105\0\105\0\u05a9\0\u05ee"+
    "\0\u0633\0\u0678\0\u06bd\0\u0702\0\u0747\0\u078c\0\u07d1\0\u0816"+
    "\0\u085b\0\u08a0\0\u08e5\0\u092a\0\u096f\0\u09b4\0\u09f9\0\u0a3e"+
    "\0\105\0\u0a83\0\105\0\105\0\105\0\u0114\0\105\0\u0ac8"+
    "\0\u0159\0\105\0\u01e3\0\u0b0d\0\105\0\105\0\105\0\105"+
    "\0\105\0\105\0\u0b52\0\u0b97\0\u0bdc\0\105\0\u0159\0\105"+
    "\0\105\0\105\0\105\0\u0c21\0\u0c66\0\u0cab\0\u0cf0\0\u0d35"+
    "\0\u0d7a\0\u0dbf\0\u0e04\0\u0e49\0\u0e8e\0\u0ed3\0\u0f18\0\u0f5d"+
    "\0\u0fa2\0\u0fe7\0\u102c\0\u1071\0\u10b6\0\u10fb\0\u1140\0\u0564"+
    "\0\u1185\0\u11ca\0\u120f\0\u1254\0\u1299\0\u12de\0\u1323\0\u1368"+
    "\0\u13ad\0\u13f2\0\u1437\0\u147c\0\u14c1\0\u1506\0\u154b\0\105"+
    "\0\u0114\0\105\0\u1590\0\u0564\0\u15d5\0\u161a\0\u165f\0\u16a4"+
    "\0\u16e9\0\u172e\0\u1773\0\u17b8\0\u17fd\0\u1842\0\u1887\0\u18cc"+
    "\0\u1911\0\u1956\0\u199b\0\u19e0\0\u1a25\0\u0564\0\u1a6a\0\u0564"+
    "\0\u1aaf\0\u1af4\0\u1b39\0\u1b7e\0\u1bc3\0\u1c08\0\u0564\0\u1c4d"+
    "\0\u1c92\0\u1cd7\0\u1d1c\0\u0564\0\u1d61\0\u1da6\0\u1deb\0\u1e30"+
    "\0\u1e75\0\u1eba\0\u1eff\0\u1f44\0\u0b97\0\u1f89\0\u1fce\0\u0564"+
    "\0\u0564\0\u2013\0\u0564\0\u2058\0\u0564\0\u209d\0\u20e2\0\u2127"+
    "\0\u0564\0\u216c\0\u21b1\0\u21f6\0\u223b\0\u2280\0\u22c5\0\u230a"+
    "\0\u234f\0\u2394\0\u23d9\0\u241e\0\u2463\0\u0564\0\u24a8\0\u24ed"+
    "\0\u0564\0\u2532\0\u2577\0\u25bc\0\u2601\0\u2646\0\u268b\0\u26d0"+
    "\0\u2715\0\u275a\0\u0564\0\u279f\0\u0564\0\u27e4\0\u2829\0\u0564"+
    "\0\u0564\0\u0564\0\u0564\0\u286e\0\u28b3\0\u28f8\0\u293d\0\u0564"+
    "\0\u0564\0\u0564\0\u2982\0\u29c7\0\u2a0c\0\u2a51\0\u0564\0\u0564"+
    "\0\u0564\0\u0564\0\u2a96\0\u2adb\0\u2b20\0\u2b65\0\u2baa\0\u2bef"+
    "\0\u2c34\0\u2c79\0\u2cbe\0\u2d03\0\u2d48\0\u2d8d\0\u2dd2\0\u2e17"+
    "\0\u0564\0\u0564\0\u2e5c\0\u2ea1\0\u0564\0\u2ee6\0\u2f2b\0\u2f70"+
    "\0\u2fb5\0\u0564\0\u2ffa\0\u303f\0\u3084\0\u30c9\0\u310e\0\u3153"+
    "\0\u3198\0\u0564\0\u0564\0\u0564\0\u0564\0\u0564\0\u0564\0\u0564"+
    "\0\u0564\0\u31dd\0\u0564\0\u3222\0\u3267\0\u0564\0\u32ac\0\u0564"+
    "\0\u0564\0\u32f1\0\u3336\0\u0564\0\u337b\0\u33c0\0\u0564\0\u0564"+
    "\0\u0564\0\u0564\0\u3405\0\u0564\0\u0564\0\u344a\0\u0564\0\u0564";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[280];
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
    "\1\2\3\3\1\4\1\5\1\6\1\7\1\10\1\11"+
    "\1\12\1\13\1\14\1\15\1\16\1\17\1\20\1\21"+
    "\1\22\7\23\1\24\1\25\1\26\1\27\1\30\1\31"+
    "\1\32\1\33\4\34\1\35\1\2\1\36\1\37\1\40"+
    "\1\41\1\42\1\43\1\44\1\45\1\46\1\47\3\34"+
    "\1\50\1\51\1\52\1\53\1\54\1\55\1\56\1\57"+
    "\1\60\2\34\1\61\1\62\1\63\1\64\1\2\106\0"+
    "\3\3\136\0\1\65\47\0\5\66\1\67\41\66\1\70"+
    "\35\66\22\0\10\71\7\0\3\71\5\0\6\71\36\0"+
    "\1\72\74\0\11\73\1\67\35\73\1\74\35\73\35\0"+
    "\1\75\64\0\1\76\17\0\1\77\66\0\1\100\15\0"+
    "\1\101\1\102\70\0\10\103\67\0\1\104\4\0\1\105"+
    "\13\0\1\106\67\0\1\103\1\0\10\23\44\0\1\107"+
    "\26\0\1\103\1\0\10\23\105\0\1\110\107\0\1\111"+
    "\104\0\1\112\104\0\1\113\71\0\10\34\7\0\4\34"+
    "\1\114\3\0\27\34\27\0\10\34\7\0\5\34\3\0"+
    "\27\34\27\0\10\34\7\0\5\34\3\0\1\34\1\115"+
    "\15\34\1\116\2\34\1\117\4\34\27\0\10\34\7\0"+
    "\5\34\3\0\15\34\1\120\1\34\1\121\7\34\27\0"+
    "\10\34\7\0\5\34\3\0\1\122\11\34\1\123\2\34"+
    "\1\124\11\34\27\0\10\34\7\0\5\34\3\0\4\34"+
    "\1\125\10\34\1\126\11\34\27\0\10\34\7\0\5\34"+
    "\3\0\12\34\1\127\12\34\1\130\1\34\27\0\10\34"+
    "\7\0\5\34\3\0\1\131\7\34\1\132\1\34\1\133"+
    "\2\34\1\134\4\34\1\135\4\34\27\0\10\34\7\0"+
    "\5\34\3\0\4\34\1\136\22\34\27\0\10\34\7\0"+
    "\5\34\3\0\1\137\26\34\27\0\10\34\7\0\5\34"+
    "\3\0\5\34\1\140\6\34\1\141\12\34\27\0\10\34"+
    "\7\0\5\34\3\0\1\142\21\34\1\143\4\34\27\0"+
    "\10\34\7\0\5\34\3\0\22\34\1\144\1\145\3\34"+
    "\27\0\10\34\7\0\5\34\3\0\17\34\1\146\7\34"+
    "\27\0\10\34\7\0\5\34\3\0\4\34\1\147\22\34"+
    "\27\0\10\34\7\0\5\34\3\0\4\34\1\150\2\34"+
    "\1\151\11\34\1\152\2\34\1\153\2\34\27\0\10\34"+
    "\7\0\5\34\3\0\17\34\1\154\7\34\27\0\10\34"+
    "\7\0\5\34\3\0\10\34\1\155\16\34\27\0\10\34"+
    "\7\0\5\34\3\0\15\34\1\156\11\34\27\0\10\34"+
    "\7\0\5\34\3\0\7\34\1\157\17\34\106\0\1\160"+
    "\3\0\5\66\1\161\41\66\1\70\35\66\2\73\2\0"+
    "\100\73\23\0\10\103\22\0\1\162\1\0\1\162\26\0"+
    "\2\104\1\0\11\104\1\163\70\104\2\105\1\0\102\105"+
    "\22\0\10\34\7\0\2\34\1\164\2\34\3\0\27\34"+
    "\27\0\10\34\7\0\5\34\3\0\20\34\1\165\6\34"+
    "\27\0\10\34\7\0\5\34\3\0\17\34\1\166\7\34"+
    "\27\0\10\34\7\0\5\34\3\0\21\34\1\167\5\34"+
    "\27\0\10\34\7\0\5\34\3\0\15\34\1\170\11\34"+
    "\27\0\10\34\7\0\5\34\3\0\4\34\1\171\22\34"+
    "\27\0\10\34\7\0\5\34\3\0\20\34\1\172\6\34"+
    "\27\0\10\34\7\0\5\34\3\0\1\173\26\34\27\0"+
    "\10\34\7\0\5\34\3\0\3\34\1\174\10\34\1\175"+
    "\12\34\27\0\10\34\7\0\5\34\3\0\5\34\1\176"+
    "\21\34\27\0\10\34\7\0\5\34\3\0\22\34\1\177"+
    "\4\34\27\0\10\34\7\0\5\34\3\0\20\34\1\200"+
    "\6\34\27\0\10\34\7\0\5\34\3\0\16\34\1\201"+
    "\2\34\1\202\5\34\27\0\10\34\7\0\5\34\3\0"+
    "\12\34\1\203\14\34\27\0\10\34\7\0\5\34\3\0"+
    "\14\34\1\204\12\34\27\0\10\34\7\0\5\34\3\0"+
    "\15\34\1\205\11\34\27\0\10\34\7\0\5\34\3\0"+
    "\17\34\1\206\7\34\27\0\10\34\7\0\5\34\3\0"+
    "\14\34\1\207\12\34\27\0\10\34\7\0\5\34\3\0"+
    "\21\34\1\210\5\34\27\0\10\34\7\0\5\34\3\0"+
    "\14\34\1\211\12\34\27\0\10\34\7\0\5\34\3\0"+
    "\2\34\1\212\12\34\1\213\3\34\1\214\5\34\27\0"+
    "\10\34\7\0\5\34\3\0\13\34\1\215\13\34\27\0"+
    "\10\34\7\0\5\34\3\0\12\34\1\216\14\34\27\0"+
    "\10\34\7\0\5\34\3\0\21\34\1\217\5\34\27\0"+
    "\10\34\7\0\5\34\3\0\4\34\1\220\22\34\27\0"+
    "\10\34\7\0\5\34\3\0\10\34\1\221\4\34\1\222"+
    "\11\34\27\0\10\34\7\0\5\34\3\0\21\34\1\223"+
    "\5\34\27\0\10\34\7\0\5\34\3\0\21\34\1\224"+
    "\5\34\27\0\10\34\7\0\5\34\3\0\1\225\26\34"+
    "\27\0\10\34\7\0\5\34\3\0\1\226\16\34\1\227"+
    "\7\34\27\0\10\34\7\0\5\34\3\0\10\34\1\230"+
    "\16\34\27\0\10\34\7\0\5\34\3\0\22\34\1\231"+
    "\4\34\27\0\10\34\7\0\5\34\3\0\14\34\1\232"+
    "\12\34\27\0\10\34\7\0\5\34\3\0\10\34\1\233"+
    "\16\34\27\0\10\34\7\0\5\34\3\0\10\34\1\234"+
    "\16\34\5\0\2\104\1\0\11\104\1\163\4\104\1\235"+
    "\63\104\22\0\10\34\7\0\5\34\3\0\21\34\1\236"+
    "\5\34\27\0\10\34\7\0\5\34\3\0\1\237\26\34"+
    "\27\0\10\34\7\0\5\34\3\0\15\34\1\240\11\34"+
    "\27\0\10\34\7\0\5\34\3\0\12\34\1\241\14\34"+
    "\27\0\10\34\7\0\5\34\3\0\1\242\26\34\27\0"+
    "\10\34\7\0\5\34\3\0\4\34\1\243\22\34\27\0"+
    "\10\34\7\0\5\34\3\0\20\34\1\244\6\34\27\0"+
    "\10\34\7\0\5\34\3\0\4\34\1\245\22\34\27\0"+
    "\10\34\7\0\5\34\3\0\20\34\1\246\6\34\27\0"+
    "\10\34\7\0\5\34\3\0\1\247\26\34\27\0\10\34"+
    "\7\0\5\34\3\0\1\34\1\250\25\34\27\0\10\34"+
    "\7\0\5\34\3\0\4\34\1\251\22\34\27\0\10\34"+
    "\7\0\5\34\3\0\12\34\1\252\14\34\27\0\10\34"+
    "\7\0\5\34\3\0\4\34\1\253\22\34\27\0\10\34"+
    "\7\0\5\34\3\0\20\34\1\254\6\34\27\0\10\34"+
    "\7\0\5\34\3\0\1\255\26\34\27\0\10\34\7\0"+
    "\5\34\3\0\1\256\26\34\27\0\10\34\7\0\5\34"+
    "\3\0\2\34\1\257\24\34\27\0\10\34\7\0\5\34"+
    "\3\0\3\34\1\260\23\34\27\0\10\34\7\0\5\34"+
    "\3\0\12\34\1\261\14\34\27\0\10\34\7\0\5\34"+
    "\3\0\22\34\1\262\4\34\27\0\1\34\1\263\1\34"+
    "\1\264\2\34\1\265\1\266\7\0\5\34\3\0\4\34"+
    "\1\267\22\34\27\0\10\34\7\0\5\34\3\0\4\34"+
    "\1\270\22\34\27\0\10\34\7\0\5\34\3\0\12\34"+
    "\1\271\14\34\27\0\10\34\7\0\5\34\3\0\17\34"+
    "\1\272\7\34\27\0\10\34\7\0\5\34\3\0\23\34"+
    "\1\273\3\34\27\0\10\34\7\0\5\34\3\0\16\34"+
    "\1\274\2\34\1\275\5\34\27\0\10\34\7\0\5\34"+
    "\3\0\22\34\1\276\4\34\27\0\10\34\7\0\5\34"+
    "\3\0\17\34\1\277\7\34\27\0\10\34\7\0\5\34"+
    "\3\0\21\34\1\300\5\34\27\0\10\34\7\0\5\34"+
    "\3\0\10\34\1\301\16\34\27\0\10\34\7\0\5\34"+
    "\3\0\21\34\1\302\5\34\27\0\10\34\7\0\5\34"+
    "\3\0\4\34\1\303\22\34\27\0\10\34\7\0\5\34"+
    "\3\0\21\34\1\304\5\34\27\0\10\34\7\0\5\34"+
    "\3\0\3\34\1\305\23\34\27\0\10\34\7\0\5\34"+
    "\3\0\12\34\1\306\14\34\27\0\10\34\7\0\5\34"+
    "\3\0\17\34\1\307\7\34\27\0\10\34\7\0\5\34"+
    "\3\0\26\34\1\310\27\0\10\34\7\0\5\34\3\0"+
    "\11\34\1\311\15\34\27\0\10\34\7\0\5\34\3\0"+
    "\20\34\1\312\6\34\27\0\10\34\7\0\5\34\3\0"+
    "\21\34\1\313\5\34\27\0\10\34\7\0\5\34\3\0"+
    "\22\34\1\314\4\34\27\0\10\34\7\0\5\34\3\0"+
    "\12\34\1\315\14\34\27\0\10\34\7\0\5\34\3\0"+
    "\10\34\1\316\16\34\27\0\10\34\7\0\5\34\3\0"+
    "\17\34\1\317\7\34\27\0\10\34\7\0\5\34\3\0"+
    "\4\34\1\320\22\34\27\0\10\34\7\0\5\34\3\0"+
    "\12\34\1\321\14\34\27\0\10\34\7\0\5\34\3\0"+
    "\21\34\1\322\5\34\27\0\10\34\7\0\5\34\3\0"+
    "\3\34\1\323\15\34\1\324\5\34\27\0\10\34\7\0"+
    "\5\34\3\0\12\34\1\325\14\34\27\0\10\34\7\0"+
    "\5\34\3\0\22\34\1\326\4\34\27\0\10\34\7\0"+
    "\5\34\3\0\21\34\1\327\5\34\27\0\6\34\1\330"+
    "\1\34\7\0\5\34\3\0\27\34\27\0\2\34\1\331"+
    "\5\34\7\0\5\34\3\0\27\34\27\0\4\34\1\332"+
    "\3\34\7\0\5\34\3\0\27\34\27\0\10\34\7\0"+
    "\5\34\3\0\6\34\1\333\20\34\27\0\10\34\7\0"+
    "\5\34\3\0\20\34\1\334\6\34\27\0\10\34\7\0"+
    "\5\34\3\0\17\34\1\335\7\34\27\0\10\34\7\0"+
    "\5\34\3\0\1\336\26\34\27\0\10\34\7\0\5\34"+
    "\3\0\4\34\1\337\22\34\27\0\10\34\7\0\5\34"+
    "\3\0\4\34\1\340\22\34\27\0\10\34\7\0\5\34"+
    "\3\0\17\34\1\341\7\34\27\0\10\34\7\0\5\34"+
    "\3\0\4\34\1\342\22\34\27\0\10\34\7\0\5\34"+
    "\3\0\10\34\1\343\16\34\27\0\10\34\7\0\5\34"+
    "\3\0\14\34\1\344\12\34\27\0\10\34\7\0\5\34"+
    "\3\0\2\34\1\345\24\34\27\0\1\34\1\346\1\34"+
    "\1\347\2\34\1\350\1\351\7\0\5\34\3\0\27\34"+
    "\27\0\10\34\7\0\5\34\3\0\4\34\1\352\22\34"+
    "\27\0\10\34\7\0\5\34\3\0\1\353\26\34\27\0"+
    "\10\34\7\0\5\34\3\0\12\34\1\354\14\34\27\0"+
    "\10\34\7\0\5\34\3\0\4\34\1\355\22\34\27\0"+
    "\10\34\7\0\5\34\3\0\2\34\1\356\24\34\27\0"+
    "\10\34\7\0\5\34\3\0\14\34\1\357\12\34\27\0"+
    "\10\34\7\0\5\34\3\0\4\34\1\360\22\34\27\0"+
    "\10\34\7\0\5\34\3\0\10\34\1\361\16\34\27\0"+
    "\10\34\7\0\5\34\3\0\4\34\1\362\22\34\27\0"+
    "\10\34\7\0\5\34\3\0\3\34\1\363\23\34\27\0"+
    "\10\34\7\0\5\34\3\0\4\34\1\364\22\34\27\0"+
    "\10\34\7\0\5\34\3\0\16\34\1\365\10\34\27\0"+
    "\10\34\7\0\5\34\3\0\10\34\1\366\16\34\27\0"+
    "\10\34\7\0\5\34\3\0\21\34\1\367\5\34\27\0"+
    "\10\34\7\0\5\34\3\0\17\34\1\370\7\34\27\0"+
    "\10\34\7\0\5\34\3\0\2\34\1\371\24\34\27\0"+
    "\10\34\7\0\5\34\3\0\14\34\1\372\12\34\27\0"+
    "\10\34\7\0\5\34\3\0\3\34\1\373\23\34\27\0"+
    "\10\34\7\0\5\34\3\0\2\34\1\374\24\34\27\0"+
    "\10\34\7\0\5\34\3\0\6\34\1\375\20\34\27\0"+
    "\10\34\7\0\5\34\3\0\7\34\1\376\17\34\27\0"+
    "\6\34\1\377\1\34\7\0\5\34\3\0\27\34\27\0"+
    "\2\34\1\u0100\5\34\7\0\5\34\3\0\27\34\27\0"+
    "\4\34\1\u0101\3\34\7\0\5\34\3\0\27\34\27\0"+
    "\10\34\7\0\5\34\3\0\2\34\1\u0102\24\34\27\0"+
    "\10\34\7\0\5\34\3\0\21\34\1\u0103\5\34\27\0"+
    "\10\34\7\0\5\34\3\0\10\34\1\u0104\16\34\27\0"+
    "\10\34\7\0\5\34\3\0\1\u0105\26\34\27\0\10\34"+
    "\7\0\5\34\3\0\5\34\1\u0106\21\34\27\0\10\34"+
    "\7\0\5\34\3\0\15\34\1\u0107\11\34\27\0\10\34"+
    "\7\0\5\34\3\0\4\34\1\u0108\22\34\27\0\10\34"+
    "\7\0\5\34\3\0\17\34\1\u0109\7\34\27\0\10\34"+
    "\7\0\5\34\3\0\1\u010a\26\34\27\0\10\34\7\0"+
    "\5\34\3\0\3\34\1\u010b\23\34\27\0\10\34\7\0"+
    "\5\34\3\0\4\34\1\u010c\22\34\27\0\10\34\7\0"+
    "\5\34\3\0\21\34\1\u010d\5\34\27\0\10\34\7\0"+
    "\5\34\3\0\21\34\1\u010e\5\34\27\0\10\34\7\0"+
    "\5\34\3\0\21\34\1\u010f\5\34\27\0\10\34\7\0"+
    "\5\34\3\0\21\34\1\u0110\5\34\27\0\10\34\7\0"+
    "\5\34\3\0\12\34\1\u0111\14\34\27\0\10\34\7\0"+
    "\5\34\3\0\14\34\1\u0112\12\34\27\0\10\34\7\0"+
    "\5\34\3\0\2\34\1\u0113\24\34\27\0\10\34\7\0"+
    "\5\34\3\0\4\34\1\u0114\22\34\27\0\10\34\7\0"+
    "\5\34\3\0\26\34\1\u0115\27\0\10\34\7\0\5\34"+
    "\3\0\4\34\1\u0116\22\34\27\0\10\34\7\0\5\34"+
    "\3\0\4\34\1\u0117\22\34\27\0\10\34\7\0\5\34"+
    "\3\0\3\34\1\u0118\23\34\5\0";

  private static int [] zzUnpacktrans() {
    int [] result = new int[13455];
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
    "\1\0\1\11\3\1\1\11\3\1\2\11\2\1\1\11"+
    "\6\1\1\11\3\1\2\11\2\1\2\11\22\1\1\11"+
    "\1\1\3\11\1\0\1\11\1\0\1\1\1\11\2\0"+
    "\6\11\1\1\1\0\1\1\1\11\1\0\4\11\44\1"+
    "\1\11\1\1\1\11\1\0\245\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[280];
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
  public _AngelScriptLexer() {
    this((java.io.Reader)null);
  }


  /**
   * Creates a new scanner
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public _AngelScriptLexer(java.io.Reader in) {
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
        return null;
      }
      else {
        switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
          case 1:
            { return BAD_CHARACTER;
            }
          // fall through
          case 101: break;
          case 2:
            { return WHITE_SPACE;
            }
          // fall through
          case 102: break;
          case 3:
            { return NOT;
            }
          // fall through
          case 103: break;
          case 4:
            { return HASH;
            }
          // fall through
          case 104: break;
          case 5:
            { return LPAREN;
            }
          // fall through
          case 105: break;
          case 6:
            { return RPAREN;
            }
          // fall through
          case 106: break;
          case 7:
            { return MUL;
            }
          // fall through
          case 107: break;
          case 8:
            { return PLUS;
            }
          // fall through
          case 108: break;
          case 9:
            { return COMMA;
            }
          // fall through
          case 109: break;
          case 10:
            { return MINUS;
            }
          // fall through
          case 110: break;
          case 11:
            { return DOT;
            }
          // fall through
          case 111: break;
          case 12:
            { return DIV;
            }
          // fall through
          case 112: break;
          case 13:
            { return INTVAL;
            }
          // fall through
          case 113: break;
          case 14:
            { return COLON;
            }
          // fall through
          case 114: break;
          case 15:
            { return SEMI;
            }
          // fall through
          case 115: break;
          case 16:
            { return LT;
            }
          // fall through
          case 116: break;
          case 17:
            { return EQ;
            }
          // fall through
          case 117: break;
          case 18:
            { return GT;
            }
          // fall through
          case 118: break;
          case 19:
            { return QUEST;
            }
          // fall through
          case 119: break;
          case 20:
            { return AT;
            }
          // fall through
          case 120: break;
          case 21:
            { return ID;
            }
          // fall through
          case 121: break;
          case 22:
            { return LBRACK;
            }
          // fall through
          case 122: break;
          case 23:
            { return RBRACK;
            }
          // fall through
          case 123: break;
          case 24:
            { return LBRACE;
            }
          // fall through
          case 124: break;
          case 25:
            { return RBRACE;
            }
          // fall through
          case 125: break;
          case 26:
            { return TILDE;
            }
          // fall through
          case 126: break;
          case 27:
            { return NEQ;
            }
          // fall through
          case 127: break;
          case 28:
            { return STRVAL;
            }
          // fall through
          case 128: break;
          case 29:
            { return HEXVAL;
            }
          // fall through
          case 129: break;
          case 30:
            { return AND_AND;
            }
          // fall through
          case 130: break;
          case 31:
            { return MUL_EQ;
            }
          // fall through
          case 131: break;
          case 32:
            { return PLUS_PLUS;
            }
          // fall through
          case 132: break;
          case 33:
            { return PLUS_EQ;
            }
          // fall through
          case 133: break;
          case 34:
            { return MINUS_MINUS;
            }
          // fall through
          case 134: break;
          case 35:
            { return MINUS_EQ;
            }
          // fall through
          case 135: break;
          case 36:
            { return MINUS_GT;
            }
          // fall through
          case 136: break;
          case 37:
            { return REALVAL;
            }
          // fall through
          case 137: break;
          case 38:
            { return SINGLE_LINE_COMMENT;
            }
          // fall through
          case 138: break;
          case 39:
            { return DIV_EQ;
            }
          // fall through
          case 139: break;
          case 40:
            { return COLON_COLON;
            }
          // fall through
          case 140: break;
          case 41:
            { return LT_EQ;
            }
          // fall through
          case 141: break;
          case 42:
            { return EQ_EQ;
            }
          // fall through
          case 142: break;
          case 43:
            { return GT_EQ;
            }
          // fall through
          case 143: break;
          case 44:
            { return DO;
            }
          // fall through
          case 144: break;
          case 45:
            { return IF;
            }
          // fall through
          case 145: break;
          case 46:
            { return IN;
            }
          // fall through
          case 146: break;
          case 47:
            { return OR_OR;
            }
          // fall through
          case 147: break;
          case 48:
            { return AND;
            }
          // fall through
          case 148: break;
          case 49:
            { return FOR;
            }
          // fall through
          case 149: break;
          case 50:
            { return GET;
            }
          // fall through
          case 150: break;
          case 51:
            { return INT;
            }
          // fall through
          case 151: break;
          case 52:
            { return OUT;
            }
          // fall through
          case 152: break;
          case 53:
            { return SET;
            }
          // fall through
          case 153: break;
          case 54:
            { return MULTI_LINE_COMMENT;
            }
          // fall through
          case 154: break;
          case 55:
            { return AUTO;
            }
          // fall through
          case 155: break;
          case 56:
            { return BOOL;
            }
          // fall through
          case 156: break;
          case 57:
            { return CASE;
            }
          // fall through
          case 157: break;
          case 58:
            { return CODE;
            }
          // fall through
          case 158: break;
          case 59:
            { return ELSE;
            }
          // fall through
          case 159: break;
          case 60:
            { return INT8;
            }
          // fall through
          case 160: break;
          case 61:
            { return NULL;
            }
          // fall through
          case 161: break;
          case 62:
            { return TRUE;
            }
          // fall through
          case 162: break;
          case 63:
            { return UINT;
            }
          // fall through
          case 163: break;
          case 64:
            { return VOID;
            }
          // fall through
          case 164: break;
          case 65:
            { return ARRAY;
            }
          // fall through
          case 165: break;
          case 66:
            { return BREAK;
            }
          // fall through
          case 166: break;
          case 67:
            { return CLASS;
            }
          // fall through
          case 167: break;
          case 68:
            { return CONST;
            }
          // fall through
          case 168: break;
          case 69:
            { return FALSE;
            }
          // fall through
          case 169: break;
          case 70:
            { return FINAL;
            }
          // fall through
          case 170: break;
          case 71:
            { return FLOAT;
            }
          // fall through
          case 171: break;
          case 72:
            { return INOUT;
            }
          // fall through
          case 172: break;
          case 73:
            { return INT16;
            }
          // fall through
          case 173: break;
          case 74:
            { return INT32;
            }
          // fall through
          case 174: break;
          case 75:
            { return INT64;
            }
          // fall through
          case 175: break;
          case 76:
            { return UINT8;
            }
          // fall through
          case 176: break;
          case 77:
            { return WHILE;
            }
          // fall through
          case 177: break;
          case 78:
            { return DOUBLE;
            }
          // fall through
          case 178: break;
          case 79:
            { return HANDLE;
            }
          // fall through
          case 179: break;
          case 80:
            { return RETURN;
            }
          // fall through
          case 180: break;
          case 81:
            { return SHARED;
            }
          // fall through
          case 181: break;
          case 82:
            { return STATIC;
            }
          // fall through
          case 182: break;
          case 83:
            { return STRING;
            }
          // fall through
          case 183: break;
          case 84:
            { return SWITCH;
            }
          // fall through
          case 184: break;
          case 85:
            { return UINT16;
            }
          // fall through
          case 185: break;
          case 86:
            { return UINT32;
            }
          // fall through
          case 186: break;
          case 87:
            { return UINT64;
            }
          // fall through
          case 187: break;
          case 88:
            { return DEFAULT;
            }
          // fall through
          case 188: break;
          case 89:
            { return FUNCDEF;
            }
          // fall through
          case 189: break;
          case 90:
            { return INCLUDE;
            }
          // fall through
          case 190: break;
          case 91:
            { return INTEGER;
            }
          // fall through
          case 191: break;
          case 92:
            { return PRIVATE;
            }
          // fall through
          case 192: break;
          case 93:
            { return ABSTRACT;
            }
          // fall through
          case 193: break;
          case 94:
            { return EXPLICIT;
            }
          // fall through
          case 194: break;
          case 95:
            { return EXTERNAL;
            }
          // fall through
          case 195: break;
          case 96:
            { return FUNCTION;
            }
          // fall through
          case 196: break;
          case 97:
            { return OVERRIDE;
            }
          // fall through
          case 197: break;
          case 98:
            { return PROPERTY;
            }
          // fall through
          case 198: break;
          case 99:
            { return NAMESPACE;
            }
          // fall through
          case 199: break;
          case 100:
            { return PROTECTED;
            }
          // fall through
          case 200: break;
          default:
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}