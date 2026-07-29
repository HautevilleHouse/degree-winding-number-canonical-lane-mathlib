import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure DegreeWindingObject where
  carrier : Type
  topology : TopologicalSpace carrier
  complexLineBundle : Type
  holomorphicStructure : Prop
  firstChernClass : Type
  windingNumberDefined : Prop
  windingNumber : ℤ
  degreeCalculus : Prop
  degreeCalculusClosed : degreeCalculus

structure AdmittedDegreeObject where
  object : DegreeWindingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse