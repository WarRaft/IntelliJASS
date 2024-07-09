package raft.war.binary.parser.w3g.parser.commandblock;

import raft.war.binary.parser.w3g.parser.IBinaryStructure;

public interface IAction extends IBinaryStructure {

    byte actionId();

}
