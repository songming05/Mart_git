package board.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class AfterBoardDTO {
	private int seq;
	private String prdtCode;
	private String id;
	private String subject;
	private String content;
	private int good;
	private String whereToBuy;
	private int ref;
	private int lev;
	private int step;
	private int pseq;
	private int reply;
	private int hit;
	private String logtime;
	private String fileName;
}
