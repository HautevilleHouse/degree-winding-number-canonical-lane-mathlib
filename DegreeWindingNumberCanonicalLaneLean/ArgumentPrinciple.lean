import canonicalLaneMathlib.AdmissibleClass

/-!
# Argument Principle Package

This module records the argument principle and its relation to winding numbers.
-/

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure ArgumentPrinciplePackage where
  meromorphicFunction : Type u
  contour : Type v
  polesInside : Prop
  zerosInside : Prop
  residueTheorem : Prop
  windingNumberRelation : Prop

structure ArgumentPrincipleEvidence (A : ArgumentPrinciplePackage) where
  polesInsideClosed : A.polesInside
  zerosInsideClosed : A.zerosInside
  residueTheoremClosed : A.residueTheorem
  windingNumberRelationClosed : A.windingNumberRelation

def ArgumentPrincipleClosed (A : ArgumentPrinciplePackage) : Prop :=
  A.polesInside ∧ A.zerosInside ∧ A.residueTheorem ∧ A.windingNumberRelation

theorem argument_principle_closed_from_evidence
    (A : ArgumentPrinciplePackage) (E : ArgumentPrincipleEvidence A) :
    ArgumentPrincipleClosed A := by
  exact And.intro E.polesInsideClosed
    (And.intro E.zerosInsideClosed
      (And.intro E.residueTheoremClosed E.windingNumberRelationClosed))

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
