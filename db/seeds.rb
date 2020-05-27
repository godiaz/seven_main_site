if Rails.env.development?
  Service.destroy_all
end

services = {
  "Energy Statements" => {
    color: "2DB5B9",
    content: "Energy statements are required by ‘Major schemes’ to support the planning application. They normally form a part of the Sustainability statement.

Local Authorities vary in their requirements and targets with respect to energy. The most onerous being the London Plan, although some boroughs go further still.

We review your proposals and the local authority policy to determine the principal targets. We integrate easily into your current design team to coordinate a compliant, cost effective solution that best fits your project.

We carry out all the calculations (SAP, SBEM, Overheating) and feasibility studies (LZC technology, proximity to district heat networks etc) required to support the statement."
  },
  "Part L - SAP & SBEM" => {
    color: "EF8BAB",
    content: "The Building regulations Part L is concerned with the conservation of fuel and power. It is split into approved documents L1A (New Dwellings) and L2A (New buildings other than dwellings).

SAP calculations are the method by which new dwellings prove compliance with Part L1A.

SBEM calculations are the method by which new buildings (other than dwellings) prove compliance with Part L2A.

Building control are required to see a ‘design stage’ calculation. Without the design stage SAP calculation, building control will not allow the project to start on site.

When the building is complete, building control are required to see an ‘as built’ SAP calculation and an Energy Performance Certificate (EPC), to enable Final Building Control Approval.

We engage with clients from RIBA stage 2 through to completion and work along side your existing design team to craft a compliant, cost effective solution that best fits your project aspirations.",
  },
  "Thermal Comfort & Overheating" => {
    color: "D95415",
    content: "We provide thermal modelling analysis using IESVE DSM software to assess proposals for the potential of overheating against BB101 for schools, CIBSE TM52 for non domestic buildings and CIBSE TM59 for residential applications."
  },
  "Daylight" => {
    color: "FAB900",
    content: "Daylight, sunlight and overshadowing analysis are often required at planning to confirm adequate light levels within the proposed development and to prevent new developments from reducing daylight access to adjacent properties.

Where site constraints exist, these can be overcome by ensuring large enough windows, limiting room depths and light coloured interior

We provide design advice and BRE reports to help you development proposals meet planning requirements with respect to Daylight, sunlight and overshadowing."
  },
  "BREEAM - WELL" => {
    color: "0A5D4E",
    content: "Sustainability certification standards such as BREEAM and WELL are often required by planning authorities to meet their local sustainability targets or by clients to ensure they meet the requirements of the target tenants or their own sustainability policies.

We offer a range of BREEAM and WELL credit assessment services related to energy, renewable energy, daylight and thermal comfort. We can provide the relevant approved and accredited ‘Credit Reports’ for BREEAM or Letters of Assurance for WELL certification

If you need a BREEAM or WELL assessor, please don’t hesitate to contact us as we can also manage the BREEAM or WELL process, ensuring your sustainability requirements are coordinated and achieved.",
  },
  "Water Efficiency" => {
    content: "Building Regulations Approved Document G states that new dwellings must not use more than 125 litres if water per person per day. Some local authorities require less. This calculation takes into account the water consumption from toilets, showers, baths, taps and white goods.

We provide a Water Efficiency Calculation that shows the water usage in your dwelling complies with Building Regulations. If you haven’t already specified the sanitary ware in your dwelling, we can provide a target specification that complies with the regs.",
color: "003C63"
  }
}

services.keys.each do |r|
  Service.create!(title: r, color: services[r][:color], content: services[r][:content])
end

# Project.create(
#   name: 'Twickenham Gateway',
#   subheader: 'Twickenham Gateway is the transformational redevelopment of Twickenham Station. A brand new station building in the centre of a public plaza hosting a convenience store, cafe and shops at ground level with new apartments above.',
#   location: 'Twickenham',
#   client: 'Solum',
#   architect: "Rolf Judd",
#   contractor: 'Osborne',
#   services:
# )








