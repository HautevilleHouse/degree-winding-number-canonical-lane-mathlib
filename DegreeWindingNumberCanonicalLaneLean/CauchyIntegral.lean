import DegreeWindingNumberCanonicalLaneLean.ArgumentPrinciple

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure CauchyIntegralPackage where
  analyticFunction : Type u
  closedContour : Type v
  integralFormula : Prop
  windingNumber : ℤ
  pointInside : Prop
  evaluated : ℂ

def CauchyIntegralClosed (P : CauchyIntegralPackage) : Prop :=
  P.integralFormula ∧ P.evaluated = (2πI : ℂ) * P.windingNumber * (analyticFunctionAtPoint P)

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse