/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function findAllPersons() {

    $("#showtable").css("display", "block");
    var request = $.ajax({
        url: "api/person/",
        dataType: "json"
    });
    request.done(function (persons) {
        $("#table").text("");
        for (var i = 0; i < persons.length; i++) {
            $("#table").append("<tr>");
            $("#table").append("<td>" + persons[i].firstname + " " + persons[i].lastname + "</td>");
            $("#table").append("<td>" + persons[i].email + "</td>");
            $("#table").append("<td>" + persons[i].address.street + " " + persons[i].address.additionalinfo + " " + persons[i].address.cityinfo.city + " " + persons[i].address.cityinfo.zipcode + "</td>");
            var text = "<td> ";
            for (var x = 0; x < persons[i].phones.length; x++) {
                text += persons[i].phones[x].number + " " + persons[i].phones[x].description + " ";
            }
            text += " </td>";
            $("#table").append(text);
            var text2 = "<td>";
            for (var j = 0; j < persons[i].hobbies.length; j++) {
                text2 += persons[i].hobbies[j].name + " " + persons[i].hobbies[j].description + " ";
            }
            text2 += " </td>";
            $("#table").append(text2);
            $("#table").append("</tr>");
        }
    });
    request.fail(function (jqXHR, textStatus) {
        jsonValue = jQuery.parseJSON(jqXHR.responseText);
        alert("Request failed: " + jsonValue.message);
    });
}