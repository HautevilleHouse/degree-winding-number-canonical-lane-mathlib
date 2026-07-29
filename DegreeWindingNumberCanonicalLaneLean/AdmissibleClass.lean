import DegreeWindingNumberCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure AdmissibleClass where
  object : WindingNumberAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WindingNumberWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse