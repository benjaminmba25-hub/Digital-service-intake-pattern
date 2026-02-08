## Accessibility Compliance Checklist
*WCAG 2.1 AA Standard for Public Sector*

### Perceivable
- [ ] **Text Alternatives**: All icons have aria-labels (not just color)
- [ ] **Resize Text**: 200% zoom without horizontal scroll
- [ ] **Contrast Ratio**: 4.5:1 minimum for normal text (use WebAIM contrast checker)

### Operable
- [ ] **Keyboard Navigation**: Full form completion without mouse (Tab order logical)
- [ ] **Focus Indicators**: Visible focus ring on all interactive elements
- [ ] **Error Recovery**: Users can correct errors without re-entering all data

### Understandable
- [ ] **Error Prevention**: Final confirmation step for irreversible submissions
- [ ] **Plain English**: Flesch Reading Ease score 60+ (avoid jargon)
- [ ] **Consistent Navigation**: Same layout throughout journey

### Robust
- [ ] **Screen Reader Tested**: NVDA/JAWS compatibility verified
- [ ] **Mobile Responsive**: Touch targets minimum 44x44px
- [ ] **Assistive Tech**: Compatible with speech recognition software (Dragon)

### Specific to This Pattern
- [ ] **Validation Errors**: Announced immediately to screen readers (aria-live="assertive")
- [ ] **Progress Indicators**: Step X of Y announced at each stage
- [ ] **Timeout Warning**: 20-minute warning before session expiry (not abrupt logout)

### GDS Standard Alignment
&gt; "Make sure everyone can use the service" - GDS Service Standard Point 5

**Evidence Required for Service Assessment**:
- Accessibility audit report (automated + manual testing)
- Usability testing with disabled users (minimum 5 participants)
- Published accessibility statement (WCAG 2.1 AA compliance claim)
