class RestructureMembers < ActiveRecord::Migration
  def up
    connection.execute("UPDATE contents SET type='Member' WHERE type='Hotel'")
    connection.execute("UPDATE contents SET type='Member' WHERE type='RealtyAgency'")
    connection.execute("UPDATE sections SET type='MemberList' WHERE type='HotelList'")
    connection.execute("UPDATE sections SET type='MemberList' WHERE type='RealtyAgencyList'")
  end
end