package raft.war.binary.parser.w3g.parser;

import raft.war.binary.parser.w3g.parser.commandblock.ActionCommandBlock;
import raft.war.binary.parser.w3g.parser.commandblock.CommandBlockParser;
import raft.war.binary.parser.w3g.parser.exceptions.PackedFormatException;
import raft.war.binary.parser.w3g.parser.packed.PackedResult;
import raft.war.binary.parser.w3g.parser.replay.ReplayParser;
import raft.war.binary.parser.w3g.parser.replay.ReplayParserResult;
import raft.war.binary.parser.w3g.parser.test.DotaStatsParser;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.zip.DataFormatException;

public class Main {

    public static void main(String[] args) throws IOException, PackedFormatException, DataFormatException {

        //new SaveGameParser().parsePacked(new FileInputStream(new File("D:\\Downloads\\Telegram Desktop\\LastReplay.w3g")));
        //PackedResult<ReplayParserResult> result = new ReplayParser().parsePacked(new FileInputStream(new File("D:\\Downloads\\Telegram Desktop\\LastReplay.w3g")));
        PackedResult<ReplayParserResult> result = new ReplayParser().parsePacked(new FileInputStream(new File("D:\\Downloads\\bnet.w3g")));
        PackedResult<ReplayParserResult> result2 = new ReplayParser().parsePacked(new FileInputStream(new File("D:\\Downloads\\eb.w3g")));
        //PackedResult<ReplayParserResult> result = new ReplayParser().parsePacked(new FileInputStream(new File("D:\\Downloads\\473571.w3g")));

        //result.getPayload().getActions().get(result.getPayload().getActions().size() - 1).getTime();

        CommandBlockParser commandBlockParser = new CommandBlockParser();

        DotaStatsParser dotaStatsParser = new DotaStatsParser();

        result.getPayload().getActions().forEach(i -> {
            List<ActionCommandBlock> actionCommandBlocks = commandBlockParser.parse(ByteBuffer.wrap(i.getRecord().getRawData()).order(ByteOrder.LITTLE_ENDIAN));
            dotaStatsParser.processActions(actionCommandBlocks, (int) i.getTime());
        });


    }

}
