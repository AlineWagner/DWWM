function showSpoiler(obj)
      {
      var coSpo = obj.parentNode.getElementsByTagName("div")[0];
      
      if (coSpo.style.display == "none")
      coSpo.style.display = "";
      else
      coSpo.style.display = "none";
      }