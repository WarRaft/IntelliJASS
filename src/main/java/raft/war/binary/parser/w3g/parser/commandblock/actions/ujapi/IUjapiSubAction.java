package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import raft.war.binary.parser.w3g.parser.IBinaryStructure;

public interface IUjapiSubAction extends IBinaryStructure {
    byte getSubActionId( );
}
