# This file is part of the OpenWISP Manager
#
# Copyright (C) 2012 OpenWISP.org
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class CreateAccessPointTemplatesTemplateGroups < ActiveRecord::Migration
  def self.up
    create_table :access_point_templates_template_groups, :id => false, :force => true do |t|
      t.integer :access_point_template_id
      t.integer :template_group_id

      t.timestamps
    end
  end

  def self.down
    drop_table :access_point_templates_template_groups
  end
end
