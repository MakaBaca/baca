<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BTC View</title>
<style type="text/css">
.circle-text {
	display: table-cell;
	height: 20px;
	/*change this and the width for the size of your initial circle*/
	width: 20px;
	text-align: center;
	vertical-align: middle;
	border-radius: 50%;
	/*make it pretty*/
	background: #fff;
	border-style: solid;
	color: #000;
	font: 18px "josefin sans", arial;
	/*change this for font-size and font-family*/
}

.win {
	background: #ADFF2F;
}

.lose {
	background: #FF0000;
}

td {
	text-align: center;
}
.floatedTable{
	float: left;
}
</style>
</head>
<body>
	<table border="2" class="floatedTable">
		<tr>
			<th>#</th>
			<th>Player</th>
			<th>Banker</th>
			<th>Score</th>
			<th>P/B</th>
			<th>OR</th>
			<th>OT</th>
			<th>OOTT</th>
			<th>4D W</th>
			<th>4D I</th>
			<th>1's</th>
			<th>2's</th>
			<th>3(+)</th>
		</tr>
		<c:forEach var="btc" items="${btcList}" begin="0" end="21">
		<c:set var="pl" value="${fn:length(btc.player)}"/>
		<c:set var="bl" value="${fn:length(btc.banker)}"/>
			<tr>
				<td>${btc.noOfHands}</td>
				<c:if test="${pl > 1 && fn:startsWith(btc.player, 'O') == true}">
					<td class="win">
						<div class="circle-text">${fn:substringAfter(btc.player,"  ")}</div>
					</td>
				</c:if>
				<c:if test="${pl > 0 && btc.player != 'O' && fn:startsWith(btc.player, 'O') == false}">
					<td class="lose">${btc.player}</td>

				</c:if>
				<c:if test="${btc.player == 'O'}">
					<td>
						<div class="circle-text"></div>
					</td>
				</c:if>
				<c:if test="${empty btc.player}">
					<td>${btc.player}</td>
				</c:if>
				<c:if test="${bl > 1 && fn:startsWith(btc.banker, 'O') == true}">
					<td class="win">
						<div class="circle-text">${fn:substringAfter(btc.banker,"  ")}</div>
					</td>
				</c:if>
				<c:if test="${bl > 0 && btc.banker != 'O' && fn:startsWith(btc.banker, 'O') == false}">
					<td class="lose">${btc.banker}</td>
				</c:if>
				<c:if test="${btc.banker == 'O'}">
					<td>
						<div class="circle-text"></div>
					</td>
				</c:if>
				<c:if test="${empty btc.banker}">
					<td>${btc.banker}</td>
				</c:if>
				<td>${btc.strScore}</td>
				<td>${btc.pb}</td>
				<td>${btc.orCount}</td>
				<td>${btc.otCount}</td>
				<td>${btc.oottCount}</td>
				<c:if test="${empty btc.did4DWin}">
				<td></td>
				</c:if>
				<c:if test="${btc.did4DWin == 'N'}">
					<td class="lose">${btc.did4DWin}</td>
				</c:if>
				<c:if test="${btc.did4DWin == 'Y'}">
					<td class="win">${btc.did4DWin}</td>
				</c:if>
				<td>${btc.fourDIndicates}</td>
				<td>${btc.oneInARow}</td>
				<td>${btc.twoInARow}</td>
				<td>${btc.threeOrMoreInARow}</td>
			</tr>
		</c:forEach>
	</table>
	<table border="2" class="floatedTable">
		<tr>
			<th>#</th>
			<th>Player</th>
			<th>Banker</th>
			<th>Score</th>
			<th>P/B</th>
			<th>OR</th>
			<th>OT</th>
			<th>OOTT</th>
			<th>4D W</th>
			<th>4D I</th>
			<th>1's</th>
			<th>2's</th>
			<th>3(+)</th>
		</tr>
		<c:forEach var="btc" items="${btcList}" begin="22" end="43">
		<c:set var="pl" value="${fn:length(btc.player)}"/>
		<c:set var="bl" value="${fn:length(btc.banker)}"/>
			<tr>
				<td>${btc.noOfHands}</td>
				<c:if test="${pl > 1 && fn:startsWith(btc.player, 'O') == true}">
					<td class="win">
						<div class="circle-text">${fn:substringAfter(btc.player,"  ")}</div>
					</td>
				</c:if>
				<c:if test="${pl > 0 && btc.player != 'O' && fn:startsWith(btc.player, 'O') == false}">
					<td class="lose">${btc.player}</td>

				</c:if>
				<c:if test="${btc.player == 'O'}">
					<td>
						<div class="circle-text"></div>
					</td>
				</c:if>
				<c:if test="${empty btc.player}">
					<td>${btc.player}</td>
				</c:if>
				<c:if test="${bl > 1 && fn:startsWith(btc.banker, 'O') == true}">
					<td class="win">
						<div class="circle-text">${fn:substringAfter(btc.banker,"  ")}</div>
					</td>
				</c:if>
				<c:if test="${bl > 0 && btc.banker != 'O' && fn:startsWith(btc.banker, 'O') == false}">
					<td class="lose">${btc.banker}</td>
				</c:if>
				<c:if test="${btc.banker == 'O'}">
					<td>
						<div class="circle-text"></div>
					</td>
				</c:if>
				<c:if test="${empty btc.banker}">
					<td>${btc.banker}</td>
				</c:if>
				<td>${btc.strScore}</td>
				<td>${btc.pb}</td>
				<td>${btc.orCount}</td>
				<td>${btc.otCount}</td>
				<td>${btc.oottCount}</td>
				<c:if test="${empty btc.did4DWin}">
				<td></td>
				</c:if>
				<c:if test="${btc.did4DWin == 'N'}">
					<td class="lose">${btc.did4DWin}</td>
				</c:if>
				<c:if test="${btc.did4DWin == 'Y'}">
					<td class="win">${btc.did4DWin}</td>
				</c:if>
				<td>${btc.fourDIndicates}</td>
				<td>${btc.oneInARow}</td>
				<td>${btc.twoInARow}</td>
				<td>${btc.threeOrMoreInARow}</td>
			</tr>
		</c:forEach>
	</table>
	<table border="2" class="floatedTable">
		<tr>
			<th>#</th>
			<th>Player</th>
			<th>Banker</th>
			<th>Score</th>
			<th>P/B</th>
			<th>OR</th>
			<th>OT</th>
			<th>OOTT</th>
			<th>4D W</th>
			<th>4D I</th>
			<th>1's</th>
			<th>2's</th>
			<th>3(+)</th>
		</tr>
		<c:forEach var="btc" items="${btcList}" begin="44">
		<c:set var="pl" value="${fn:length(btc.player)}"/>
		<c:set var="bl" value="${fn:length(btc.banker)}"/>
			<tr>
				<td>${btc.noOfHands}</td>
				<c:if test="${pl > 1 && fn:startsWith(btc.player, 'O') == true}">
					<td class="win">
						<div class="circle-text">${fn:substringAfter(btc.player,"  ")}</div>
					</td>
				</c:if>
				<c:if test="${pl > 0 && btc.player != 'O' && fn:startsWith(btc.player, 'O') == false}">
					<td class="lose">${btc.player}</td>

				</c:if>
				<c:if test="${btc.player == 'O'}">
					<td>
						<div class="circle-text"></div>
					</td>
				</c:if>
				<c:if test="${empty btc.player}">
					<td>${btc.player}</td>
				</c:if>
				<c:if test="${bl > 1 && fn:startsWith(btc.banker, 'O') == true}">
					<td class="win">
						<div class="circle-text">${fn:substringAfter(btc.banker,"  ")}</div>
					</td>
				</c:if>
				<c:if test="${bl > 0 && btc.banker != 'O' && fn:startsWith(btc.banker, 'O') == false}">
					<td class="lose">${btc.banker}</td>
				</c:if>
				<c:if test="${btc.banker == 'O'}">
					<td>
						<div class="circle-text"></div>
					</td>
				</c:if>
				<c:if test="${empty btc.banker}">
					<td>${btc.banker}</td>
				</c:if>
				<td>${btc.strScore}</td>
				<td>${btc.pb}</td>
				<td>${btc.orCount}</td>
				<td>${btc.otCount}</td>
				<td>${btc.oottCount}</td>
				<c:if test="${empty btc.did4DWin}">
				<td></td>
				</c:if>
				<c:if test="${btc.did4DWin == 'N'}">
					<td class="lose">${btc.did4DWin}</td>
				</c:if>
				<c:if test="${btc.did4DWin == 'Y'}">
					<td class="win">${btc.did4DWin}</td>
				</c:if>
				<td>${btc.fourDIndicates}</td>
				<td>${btc.oneInARow}</td>
				<td>${btc.twoInARow}</td>
				<td>${btc.threeOrMoreInARow}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>