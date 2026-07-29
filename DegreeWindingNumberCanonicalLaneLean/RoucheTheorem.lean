import DegreeWindingNumberCanonicalLaneLean.ArgumentPrinciple

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure RoucheTheoremPackage {C : WindingNumberCorePackage} where
  contour : Type u
  analyticFunctions : Type v
  inequalityCondition : Prop
  sameZeroCount : Prop
  conclusion : Prop

structure RoucheTheoremEvidence {C : WindingNumberCorePackage} (R : RoucheTheoremPackage C) where
  inequalityConditionClosed : R.inequalityCondition
  sameZeroCountClosed : R.sameZeroCount
  conclusionClosed : R.conclusion

def RoucheTheoremClosed {C : WindingNumberCorePackage} (R : RoucheTheoremPackage C) : Prop :=
  R.inequalityCondition ∧ R.sameZeroCount ∧ R.conclusion

theorem rouche_theorem_closed_from_evidence {C : WindingNumberCorePackage} (R : RoucheTheoremPackage C) (E : RoucheTheoremEvidence R) :
    RoucheTheoremClosed R := by
  exact And.intro E.inequalityConditionClosed
    (And.intro E.sameZeroCountClosed E.conclusionClosed)

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse