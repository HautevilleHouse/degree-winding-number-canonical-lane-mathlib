import DegreeWindingNumberCanonicalLaneLean.DegreeWindingNumber

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure BrouwerDegreePackage where
  continuousMap : Type u
  sphereDomain : Type v
  sphereTarget : Type w
  degreeInteger : ℕ
  homotopyInvariant : Prop
  mappingDegreeDefined : Prop

def BrouwerDegreeClosed (P : BrouwerDegreePackage) : Prop :=
  P.homotopyInvariant ∧ P.mappingDegreeDefined

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse