import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure TwoPointCorrelation (Ω : Type) where
  sites : LatticeSite × LatticeSite
  equalTime : ℝ
  timeDependent : ℝ → ℝ

structure DynamicSusceptibility (Ω : Type) where
  frequency : ℝ
  response : ℝ
  fluctuationDissipation : Prop

theorem fluctuation_dissipation_theorem (Ω : Type) (χ : DynamicSusceptibility Ω) (S : StationarySolution Ω) :
  χ.response = (1 / (2 * π)) * ∫ t, (two_point_correlation S t) * exp(-ⅈ * ω * t) dt := by
  sorry

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse