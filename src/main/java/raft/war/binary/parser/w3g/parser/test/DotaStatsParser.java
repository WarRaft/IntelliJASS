package raft.war.binary.parser.w3g.parser.test;

import raft.war.binary.parser.w3g.commandBlock.ActionCommandBlock;
import raft.war.binary.parser.w3g.commandBlock.action.SyncIntegerAction;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class DotaStatsParser {

    private Map<Integer, Integer> eventRecvTimes = new HashMap<>();

    public void processActions(List<ActionCommandBlock> commandBlocks, int time) {
        for (ActionCommandBlock i : commandBlocks) {
            for (Object actionObj : i.actions) {
                if (actionObj instanceof SyncIntegerAction syncIntegerAction) {
                    processAction(syncIntegerAction, i.playerId, time);
                }
            }
        }
    }

    protected void processAction(SyncIntegerAction action, int fromPid, int time) {
        if (!"dr.x".equals(action.getFilename()))
            return;

        int eventHash = Objects.hash(action.getKey(), action.getMissionKey(), action.getValue());
        Integer lastEventRecvTime = this.eventRecvTimes.get(eventHash);

        if (lastEventRecvTime != null && time - lastEventRecvTime <= 10000)
            return;
        else
            this.eventRecvTimes.put(eventHash, time);

        if (!processUniqueAction(action, fromPid, time))
            System.out.printf("File: %s, Mk: %s, Key: %s, Value: %s%n", action.getFilename(), action.getMissionKey(), action.getKey(), action.getValue());
    }

    protected boolean processUniqueAction(SyncIntegerAction action, int fromPid, int time) {
        if ("Data".equals(action.getMissionKey())) {
            int kindEndPos = findFirstOf(action.getKey(), "0123456789");

            if (kindEndPos == -1)
                return processData(action.getKey(), "", action.getValue(), time);
            else {
                String kind = action.getKey().substring(0, kindEndPos);
                String remainingData = action.getKey().substring(kindEndPos);

                return processData(kind, remainingData, action.getValue(), time);
            }


        } else if ("Global".equals(action.getMissionKey())) {
            return processGlobal(action.getKey(), action.getValue(), time);
        } else if (action.getMissionKey().matches("^[0-9]+$")) {
            return processIntData(Integer.parseInt(action.getMissionKey()), action.getKey(), action.getValue(), time);
        }

        return false;
    }

    protected boolean processData(String kind, String remainingString, int intValue, int time) {
        /*if ("PUI_".equals(kind)) {
            // Pick UP Item

            String playerId = remainingString;
            int itemCode = intValue;

            return true;
        } else if ("DRI_".equals(kind)) {
            // Drop Item

            String playerId = remainingString;
            int itemCode = intValue;

            return true;
        }*/

        if ("Hero".equals(kind)) {
            String victimId = remainingString;
            int killerId = intValue;

            return true;
        } else if ("Courier".equals(kind)) {
            String victimId = remainingString;
            int killerId = intValue;

            return true;
        } else if ("Tower".equals(kind)) {
            int killerId = intValue;

            char alliance = remainingString.charAt(0);
            char level = remainingString.charAt(1);
            char side = remainingString.charAt(2);

            return true;
        } else if ("Rax".equals(kind)) {
            int killerId = intValue;

            char alliance = remainingString.charAt(0);
            char side = remainingString.charAt(1);
            char type = remainingString.charAt(2);

            return true;
        } else if ("Throne".equals(kind)) {
            int hpPercent = intValue;

            return true;
        } else if ("Tree".equals(kind)) {
            int hpPercent = intValue;

            return true;
        }

        return false;

    }

    protected boolean processGlobal(String key, int intValue, int time) {
        if ("Winner".equals(key)) {
            int winner = intValue;

            return true;
        } else if ("m".equals(key)) {
            int min = intValue;

            return true;
        } else if ("s".equals(key)) {
            int sec = intValue;

            return true;
        }

        return false;
    }

    protected boolean processIntData(int playerId, String key, int intValue, int time) {
        if ("1".equals(key)) {
            return true;
        } else if ("2".equals(key)) {
            return true;
        } else if ("3".equals(key)) {
            return true;
        } else if ("4".equals(key)) {
            return true;
        } else if ("5".equals(key)) {
            return true;
        } else if ("6".equals(key)) {
            return true;
        } else if ("7".equals(key)) {
            return true;
        } else if ("8_0".equals(key)) {
            return true;
        } else if ("8_1".equals(key)) {
            return true;
        } else if ("8_2".equals(key)) {
            return true;
        } else if ("8_3".equals(key)) {
            return true;
        } else if ("8_4".equals(key)) {
            return true;
        } else if ("8_5".equals(key)) {
            return true;
        } else if ("9".equals(key)) {
            return true;
        } else if ("id".equals(key)) {
            return true;
        }

        return false;
    }

    private static int findFirstOf(String str, String charsToSearch) {
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (charsToSearch.indexOf(c) != -1) {
                return i;
            }
        }
        return -1;
    }
}
