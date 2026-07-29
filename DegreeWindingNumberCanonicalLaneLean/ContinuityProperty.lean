import canonicalLaneMathlib.AdmissibleClass

/-!
# Continuity Property Package

This module defines the continuity and homotopy invariance of the winding number.
-/

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure ContinuityPropertyPackage where
  curveFamily : Type u
  baseCurve : curveFamily
  deformedCurve : curveFamily
  homotopy : Type v
  continuousHomotopy : Prop
  invarianceResult : Prop

structure ContinuityPropertyEvidence (C : ContinuityPropertyPackage) where
  continuousHomotopyClosed : C.continuousHomotopy
  invarianceResultClosed : C.invarianceResult

def ContinuityPropertyClosed (C : ContinuityPropertyPackage) : Prop :=
  C.continuousHomotopy ∧ C.invarianceResult

theorem continuity_property_closed_from_evidence
    (C : ContinuityPropertyPackage) (E : ContinuityPropertyEvidence C) :
    ContinuityPropertyClosed C := by
  exact And.intro E.continuousHomotopyClosed E.invarianceResultClosed

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
