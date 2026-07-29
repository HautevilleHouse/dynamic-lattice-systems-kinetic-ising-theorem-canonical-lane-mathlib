import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingProcess (Ω : Type) where
  stateSpace : Set (SpinConfiguration Ω)
  transitionRate : SpinConfiguration Ω → SpinConfiguration Ω → ℝ
  detailedBalance : Prop

structure GlauberDynamics (Ω : Type) extends KineticIsingProcess Ω where
  singleSpinFlipRate : LatticeSite → SpinConfiguration Ω → ℝ
  siteIndependent : Prop

structure KawasakiDynamics (Ω : Type) extends KineticIsingProcess Ω where
  spinExchangeRate : LatticeSite → LatticeSite → SpinConfiguration Ω → ℝ
  conservationLaw : Prop

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse