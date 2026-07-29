import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure WindingNumberDomain (γ : Type) [TopologicalSpace γ] [AddGroup γ] where
  loopSpace : Type
  loopTopology : TopologicalSpace loopSpace
  basepoint : γ
  fundamentalGroup : Type
  fundamentalGroupLaw : Prop

def WindingNumberDomainClosed (W : WindingNumberDomain γ) : Prop :=
  W.fundamentalGroupLaw

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
