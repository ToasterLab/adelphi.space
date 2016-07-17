$(document).ready(()->
	$('.parallax').parallax()
	
	$.get("rooms.csv", (data)->
		console.log data
		data = $.csv.toArrays(data)
		
		headers = $("<tr>")
		for td in data[0]
			headers.append($("<th>").text(td))
		data.splice(0,1)
		
		thebody = $("<tbody>")
		for room in data
			row = $("<tr>")
			for attr in room
				row.append($("<td>").text(attr))
			thebody.append(row)
			
			
		$("#details").append(
			$("<table>").addClass("highlight").append(
				$("<thead>").append(headers)
			).append(
				thebody
			)
		)
	)
)

