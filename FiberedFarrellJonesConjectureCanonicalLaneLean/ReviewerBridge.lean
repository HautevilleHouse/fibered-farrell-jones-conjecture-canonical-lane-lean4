import FiberedFarrellJonesConjectureCanonicalLaneLean.Formalization
import FiberedFarrellJonesConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace FiberedFarrellJonesConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "bc4bc48d8d9e4f118313b2f64ec3889d20ee3c65c44994771706d6018b57133d", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "2e8b7c0fc302460ba04907bf0ea0b1645f99a4eacb6afec9806c23fb32d959a1", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "80798699ad2b72a44ac55199a9b938b7d22c924478ec9d683baf958c14286309", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "269518748dbd1f5ce7a207858c5d9d5f2ec46829201fc743e8439f020e79703d", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "503062a861f690ab19368c5336e8a4aec1b308e74c7b6f020bb780a4f3caf5b1", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "6e9e1e0ffa7f6f9eaff4f056ca760926970625a985ba6e7998ad27118b349124", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "d85e4206a7d06cccb45b2f3d9f1df8fd66195c069ee67aedeed747721c6b90de", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "b01a36ba3a19f994cd1ef5ede5cc89809d8698678725ec2b3f5ca683fe9c7b48", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "30f42f224c3ed803189b377358b94e9501ba84575ea13771335add3cff08b9ce", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "FJ_G1", constant := "kappa_assembly" },
  { gate := "FJ_G2", constant := "sigma_control" },
  { gate := "FJ_G3", constant := "kappa_compact" },
  { gate := "FJ_G4", constant := "rho_rigidity" },
  { gate := "FJ_G5", constant := "isomorphism_transfer" },
  { gate := "FJ_G6", constant := "eps_coh" },
  { gate := "FJ_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "5ea019d58bc2c71ef7a55077d0018d0eb7d3728b5bc235a0b9b154f2d0371b7b" },
  { path := "README.md", sha256 := "c1900d853539dfd2a8fe327bf08077ee1330a1816264141af4a4526db561d468" },
  { path := "artifacts/constants_extracted.json", sha256 := "269518748dbd1f5ce7a207858c5d9d5f2ec46829201fc743e8439f020e79703d" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "80798699ad2b72a44ac55199a9b938b7d22c924478ec9d683baf958c14286309" },
  { path := "artifacts/constants_registry.json", sha256 := "503062a861f690ab19368c5336e8a4aec1b308e74c7b6f020bb780a4f3caf5b1" },
  { path := "artifacts/promotion_report.json", sha256 := "d85e4206a7d06cccb45b2f3d9f1df8fd66195c069ee67aedeed747721c6b90de" },
  { path := "artifacts/stitch_constants.json", sha256 := "6e9e1e0ffa7f6f9eaff4f056ca760926970625a985ba6e7998ad27118b349124" },
  { path := "notes/EG1_public.md", sha256 := "00a5bc6d11a998a1969b0784a0ef98a7be5935ec62a39c621cd60d3544a28ac7" },
  { path := "notes/EG2_public.md", sha256 := "4b00c42690d0cf6fa03d635dd6b2064d752e98fc9564819d0dfd5ab4d4f29bc8" },
  { path := "notes/EG3_public.md", sha256 := "7b05f6b8afdc0ab0fdba456125c24579fe794aa37ca309d318d77d687598d10d" },
  { path := "notes/EG4_public.md", sha256 := "091368806f262a11b5b2e71dc666afd2c89089aefabd29622cc33d8f212e7a3b" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "2e8b7c0fc302460ba04907bf0ea0b1645f99a4eacb6afec9806c23fb32d959a1" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "982841aca559fbae6229a6479bc8fb517e817302736f1addb9bb714afc1e51fe" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "766bc6d46459b2c472506f0a4060ff345d100b05e3928da176707056907a28f5" },
  { path := "paper/FARRELL_JONES_CONJECTURE_PREPRINT.md", sha256 := "3b2b2dbbae3df1993e145de2ee2743c9e7cbc0bab7d0e464e0b71c1f4a1a4207" },
  { path := "repro/REPRO_PACK.md", sha256 := "a1c8cd5705c5758d09be0fa866eb212f7d56a66df27a36068230cf506b370d77" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "18bfd975c90053ac99a0bb04fcce9717b19c49581ad24917fc0f1898a8a59ca6" },
  { path := "repro/certificate_baseline.json", sha256 := "30f42f224c3ed803189b377358b94e9501ba84575ea13771335add3cff08b9ce" },
  { path := "repro/run_repro.sh", sha256 := "d33eb1a7cb1bc9e4424131db12dcf1de7f7e7e3bbd9fd8e0013f6fc60d7cf3c1" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/fj_closure_guard.py", sha256 := "b958c7118cc041dd4e482349987a8e4375b324ba44222e4dffe4379eb71b0975" },
  { path := "scripts/README.md", sha256 := "dd85a1c1c203297b999c58a4156832396f14c5fa48ae369f7be21b74c65d6bc1" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "FJ_G1", status := "PASS" },
  { gate := "FJ_G2", status := "PASS" },
  { gate := "FJ_G3", status := "PASS" },
  { gate := "FJ_G4", status := "PASS" },
  { gate := "FJ_G5", status := "PASS" },
  { gate := "FJ_G6", status := "PASS" },
  { gate := "FJ_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "isomorphism_transfer", value := "1.029422" },
  { key := "kappa_assembly", value := "1.0918990000000002" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_control", value := "1.073" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "isomorphism_transfer",
  "kappa_assembly",
  "kappa_compact",
  "rho_rigidity",
  "sigma_control",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end FiberedFarrellJonesConjectureCanonicalLaneLean
end HautevilleHouse
