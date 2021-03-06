package com.mak.baca.card;

public class BaccaratCards {

	Suit s;
	Rank r;

	public enum Suit {
		spade, heart, diamond, clubs;
	}

	public enum Rank {
		ace(1), TWO(2), THREE(3), FOUR(4), FIVE(5), SIX(6), SEVEN(7), EIGHT(8), NINE(9), 
		TEN(10), jack(11), queen(12), king(13);

		public int priority;

		Rank(int s) {
			priority = s;
		}

		public int getPriority() {
			return priority;
		}

	}

	public Rank getRank() {
		return r;
	}

	public Suit getSuit() {
		return s;
	}

	BaccaratCards(Rank r, Suit s) {
		this.r = r;
		this.s = s;
	}
	
	@Override
	public String toString()
	{
		int p = r.getPriority();
		if(p == 1 || p >10){
			return r + "_of_" + s;
		}else{
			return p + "_of_" + s;
		}
	}

}
