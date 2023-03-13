resource "aws_connect_user_hierarchy_structure" "hierarchy_structure" {
  //name         = var.hierarchy_structure_name
  instance_id  = var.instance_id

  hierarchy_structure {
    level_one {
      name = "levelone"
    }

    level_two {
      name = "leveltwo"
    }

    level_three {
      name = "levelthree"
    }

    level_four {
      name = "levelfour"
    }

    level_five {
      name = "levelfive"
    }
  }
}