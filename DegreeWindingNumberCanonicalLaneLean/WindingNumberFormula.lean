import canonicalLaneMathlib.AdmissibleClass

/-!
# Winding Number Formula Package

This module defines the winding number integral formula and its closure
as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure WindingNumberFormulaPackage where
  curve : Type u
  parameterization : curve -> (ℝ → ℝ × ℝ)
  point : ℝ × ℝ
  integralFormula : Prop
  integerInvariant : Prop

structure WindingNumberFormulaEvidence (F : WindingNumberFormulaPackage) where
  integralFormulaClosed : F.integralFormula
  integerInvariantClosed : F.integerInvariant

def WindingNumberFormulaClosed (F : WindingNumberFormulaPackage) : Prop :=
  F.integralFormula ∧ F.integerInvariant

theorem winding_number_formula_closed_from_evidence
    (F : WindingNumberFormulaPackage) (E : WindingNumberFormulaEvidence F) :
    WindingNumberFormulaClosed F := by
  exact And.intro E.integralFormulaClosed E.integerInvariantClosed

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
