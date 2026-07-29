import canonicalLaneMathlib.AdmissibleClass
import DegreeWindingNumberCanonicalLaneLean.WindingNumberFormula
import DegreeWindingNumberCanonicalLaneLean.ContinuityProperty
import DegreeWindingNumberCanonicalLaneLean.ArgumentPrinciple

/-!
# Final Theorem: Constrained Winding Number Closure
-/

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

def ConstrainedWindingNumberClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_winding_number_endgame (A : AdmissibleClass) :
    ConstrainedWindingNumberClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
