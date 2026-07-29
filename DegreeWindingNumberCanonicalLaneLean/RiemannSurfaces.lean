import DegreeWindingNumberCanonicalLaneLean.DegreeWindingNumber

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure RiemannSurfaceWindingPackage where
  surfaceType : Type u
  complexStructure : Prop
  holomorphicMaps : Type v
  windingNumberMap : Type w
  degreeConsistent : Prop
  ramificationPoints : Nat
  coveringDegree : ℕ

def RiemannSurfaceWindingClosed (P : RiemannSurfaceWindingPackage) : Prop :=
  P.complexStructure ∧ P.degreeConsistent

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse