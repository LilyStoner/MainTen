<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav id="sidebar" class="sidebar js-sidebar collapsed">
    <div class="sidebar-content js-simplebar" data-simplebar="init"><div class="simplebar-wrapper" style="margin: 0px;"><div class="simplebar-height-auto-observer-wrapper"><div class="simplebar-height-auto-observer"></div></div><div class="simplebar-mask"><div class="simplebar-offset" style="right: 0px; bottom: 0px;"><div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: 100%; overflow: hidden scroll;"><div class="simplebar-content" style="padding: 0px;">
                            <a class="sidebar-brand" href="HomePage.jsp">
                                <span class="sidebar-brand-text align-middle">
                                    MSA
                                    <sup><small class="badge bg-primary text-uppercase">Pro</small></sup>
                                </span>
                                <svg class="sidebar-brand-icon align-middle" width="32px" height="32px" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter" color="#FFFFFF" style="margin-left: -3px">
                                <path d="M12 4L20 8.00004L12 12L4 8.00004L12 4Z"></path>
                                <path d="M20 12L12 16L4 12"></path>
                                <path d="M20 16L12 20L4 16"></path>
                                </svg>
                            </a>

                            <c:if test="${not empty sessionScope.staff}">
                                <!-- N?u l� nh�n vi�n, hi?n th? th�ng tin nh�n vi�n -->
                                <div class="sidebar-user">
                                    <div class="d-flex justify-content-center">
                                        <div class="flex-shrink-0">
                                            <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded me-1" alt="${sessionScope.staff.name}" />
                                        </div>
                                        <div class="flex-grow-1 ps-2">
                                            <a class="sidebar-user-title dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                                ${sessionScope.staff.name}
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-start">
                                                <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                                <a class="dropdown-item" href="ChangePasswordForm.jsp"><i class="align-middle me-1" data-feather="pie-chart"></i> Change Password</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="pages-settings.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
                                                <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="logout">Log out</a>
                                            </div>
                                            <div class="sidebar-user-subtitle">Employee</div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>

                            <c:if test="${not empty sessionScope.customer}">
                                <!-- N?u l� kh�ch h�ng, hi?n th? th�ng tin kh�ch h�ng -->
                                <div class="sidebar-user">
                                    <div class="d-flex justify-content-center">
                                        <div class="flex-shrink-0">
                                            <img src="${sessionScope.customer.image}" class="avatar img-fluid rounded me-1" alt="${sessionScope.customer.name}" />
                                        </div>
                                        <div class="flex-grow-1 ps-2">
                                            <a class="sidebar-user-title dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                                ${sessionScope.customer.name}
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-start">
                                                <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                                <a class="dropdown-item" href="ChangePasswordForm.jsp"><i class="align-middle me-1" data-feather="pie-chart"></i> ChangePassword</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="pages-settings.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
                                                <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="logout">Log out</a>
                                            </div>
                                            <div class="sidebar-user-subtitle">Customer</div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>

                            <!-- N?u ch?a ??ng nh?p, hi?n th? li�n k?t ??ng nh?p -->
                            <c:if test="${empty sessionScope.staff and empty sessionScope.customer}">
                                <button><a href="LoginForm.jsp">Login</a></button>
                            </c:if>

                            <ul class="sidebar-nav">
                                <li class="sidebar-header">
                                    Pages
                                </li>
                                <li class="sidebar-item active">
                                    <a data-bs-target="#dashboards" data-bs-toggle="collapse" class="sidebar-link">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-sliders align-middle"><line x1="4" y1="21" x2="4" y2="14"></line><line x1="4" y1="10" x2="4" y2="3"></line><line x1="12" y1="21" x2="12" y2="12"></line><line x1="12" y1="8" x2="12" y2="3"></line><line x1="20" y1="21" x2="20" y2="16"></line><line x1="20" y1="12" x2="20" y2="3"></line><line x1="1" y1="14" x2="7" y2="14"></line><line x1="9" y1="8" x2="15" y2="8"></line><line x1="17" y1="16" x2="23" y2="16"></line></svg> <span class="align-middle">Dashboards</span>
                                    </a>
                                    <ul id="dashboards" class="sidebar-dropdown list-unstyled collapse show" data-bs-parent="#sidebar">
                                        <li class="sidebar-item active"><a class="sidebar-link" href="index.html">Analytics</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="dashboard-ecommerce.html">E-Commerce <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="dashboard-crypto.html">Crypto <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-item">
                                    <a data-bs-target="#pages" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-layout align-middle"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><line x1="3" y1="9" x2="21" y2="9"></line><line x1="9" y1="21" x2="9" y2="9"></line></svg> <span class="align-middle">Pages</span>
                                    </a>
                                    <ul id="pages" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-settings.html">Settings</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-projects.html">Projects <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-clients.html">Clients <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-pricing.html">Pricing <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-chat.html">Chat <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-blank.html">Blank Page</a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="pages-profile.html">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user align-middle"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg> <span class="align-middle">Profile</span>
                                    </a>
                                </li>

                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="ComponentWarehouse">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Component</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="viewProduct">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Product</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="StaffController">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Staff</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="feedback">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Feedback list(Admin)</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="feedback?action=viewFeedbackDashboard">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Feedback (Customer)</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="adminDashboard.jsp">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Setting MaxSize</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="WarrantyCard">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">WarrantyCard</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="customer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Customer</span>
                                    </a>
                                </li>
                                 <li class="sidebar-item">
                                    <a class="sidebar-link" href="yourwarrantycard">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card align-middle"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg> <span class="align-middle">Your Warranty Card</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="purchaseproduct">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list align-middle"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3.01" y2="6"></line><line x1="3" y1="12" x2="3.01" y2="12"></line><line x1="3" y1="18" x2="3.01" y2="18"></line></svg> <span class="align-middle">Purchase Product</span>

                                    </a>
                                </li>

                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="calendar.html">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar align-middle"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg> <span class="align-middle">Calendar</span>
                                        <span class="sidebar-badge badge bg-primary">Pro</span>
                                    </a>
                                </li>

                                <li class="sidebar-item">
                                    <a href="#auth" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users align-middle"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg> <span class="align-middle">Auth</span>
                                    </a>
                                    <ul id="auth" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-sign-in.html">Sign In</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-sign-up.html">Sign Up</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-reset-password.html">Reset Password <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-404.html">404 Page <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="pages-500.html">500 Page <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-header">
                                    Components
                                </li>
                                <li class="sidebar-header">
                                    Customer
                                </li>
                                <li class="sidebar-item">
                                    <a data-bs-target="#ui" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-briefcase align-middle"><rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect><path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path></svg> <span class="align-middle">UI Elements</span>
                                    </a>
                                    <ul id="ui" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-alerts.html">Alerts</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-buttons.html">Buttons</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-cards.html">Cards</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-general.html">General</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-grid.html">Grid</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-modals.html">Modals</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-offcanvas.html">Offcanvas <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-placeholders.html">Placeholders <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-tabs.html">Tabs <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="ui-typography.html">Typography</a></li>
                                    </ul>
                                </li>
                                <li class="sidebar-item">
                                    <a data-bs-target="#icons" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-coffee align-middle"><path d="M18 8h1a4 4 0 0 1 0 8h-1"></path><path d="M2 8h16v9a4 4 0 0 1-4 4H6a4 4 0 0 1-4-4V8z"></path><line x1="6" y1="1" x2="6" y2="4"></line><line x1="10" y1="1" x2="10" y2="4"></line><line x1="14" y1="1" x2="14" y2="4"></line></svg> <span class="align-middle">Icons</span>
                                        <span class="sidebar-badge badge bg-light">1.500+</span>
                                    </a>
                                    <ul id="icons" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="icons-feather.html">Feather</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="icons-font-awesome.html">Font Awesome <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>
                                <li class="sidebar-item">
                                    <a data-bs-target="#forms" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle align-middle"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg> <span class="align-middle">Forms</span>
                                    </a>
                                    <ul id="forms" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="forms-basic-inputs.html">Basic Inputs</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="forms-layouts.html">Form Layouts <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="forms-input-groups.html">Input Groups <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="tables-bootstrap.html">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list align-middle"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3.01" y2="6"></line><line x1="3" y1="12" x2="3.01" y2="12"></line><line x1="3" y1="18" x2="3.01" y2="18"></line></svg> <span class="align-middle">Tables</span>
                                    </a>
                                </li>

                                <li class="sidebar-header">
                                    Plugins &amp; Addons
                                </li>
                                <li class="sidebar-item">
                                    <a data-bs-target="#form-plugins" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-square align-middle"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg> <span class="align-middle">Form Plugins</span>
                                    </a>
                                    <ul id="form-plugins" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="forms-advanced-inputs.html">Advanced Inputs <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="forms-editors.html">Editors <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="forms-validation.html">Validation <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>
                                <li class="sidebar-item">
                                    <a data-bs-target="#datatables" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list align-middle"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3.01" y2="6"></line><line x1="3" y1="12" x2="3.01" y2="12"></line><line x1="3" y1="18" x2="3.01" y2="18"></line></svg> <span class="align-middle">DataTables</span>
                                    </a>
                                    <ul id="datatables" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="tables-datatables-responsive.html">Responsive Table <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="tables-datatables-buttons.html">Table with Buttons <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="tables-datatables-column-search.html">Column Search <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="tables-datatables-fixed-header.html">Fixed Header <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="tables-datatables-multi.html">Multi Selection <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="tables-datatables-ajax.html">Ajax Sourced Data <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>
                                <li class="sidebar-item">
                                    <a data-bs-target="#charts" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2 align-middle"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg> <span class="align-middle">Charts</span>
                                    </a>
                                    <ul id="charts" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="charts-chartjs.html">Chart.js</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="charts-apexcharts.html">ApexCharts <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>
                                <li class="sidebar-item">
                                    <a class="sidebar-link" href="notifications.html">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell align-middle"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path><path d="M13.73 21a2 2 0 0 1-3.46 0"></path></svg> <span class="align-middle">Notifications</span>
                                        <span class="sidebar-badge badge bg-primary">Pro</span>
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a data-bs-target="#maps" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map align-middle"><polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"></polygon><line x1="8" y1="2" x2="8" y2="18"></line><line x1="16" y1="6" x2="16" y2="22"></line></svg> <span class="align-middle">Maps</span>
                                    </a>
                                    <ul id="maps" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                        <li class="sidebar-item"><a class="sidebar-link" href="maps-google.html">Google Maps</a></li>
                                        <li class="sidebar-item"><a class="sidebar-link" href="maps-vector.html">Vector Maps <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-item">
                                    <a data-bs-target="#multi" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-corner-right-down align-middle"><polyline points="10 15 15 20 20 15"></polyline><path d="M4 4h7a4 4 0 0 1 4 4v12"></path></svg> <span class="align-middle">Multi Level</span>
                                    </a>
                                    <ul id="multi" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                                        <li class="sidebar-item">
                                            <a data-bs-target="#multi-2" data-bs-toggle="collapse" class="sidebar-link collapsed">Two Levels</a>
                                            <ul id="multi-2" class="sidebar-dropdown list-unstyled collapse">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link" href="#">Item 1</a>
                                                    <a class="sidebar-link" href="#">Item 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sidebar-item">
                                            <a data-bs-target="#multi-3" data-bs-toggle="collapse" class="sidebar-link collapsed">Three Levels</a>
                                            <ul id="multi-3" class="sidebar-dropdown list-unstyled collapse">
                                                <li class="sidebar-item">
                                                    <a data-bs-target="#multi-3-1" data-bs-toggle="collapse" class="sidebar-link collapsed">Item 1</a>
                                                    <ul id="multi-3-1" class="sidebar-dropdown list-unstyled collapse">
                                                        <li class="sidebar-item">
                                                            <a class="sidebar-link" href="#">Item 1</a>
                                                            <a class="sidebar-link" href="#">Item 2</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link" href="#">Item 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>

                        </div></div></div></div><div class="simplebar-placeholder" style="width: auto; height: 1320px;"></div></div><div class="simplebar-track simplebar-horizontal" style="visibility: hidden;"><div class="simplebar-scrollbar" style="width: 0px; display: none;"></div></div><div class="simplebar-track simplebar-vertical" style="visibility: visible;"><div class="simplebar-scrollbar" style="height: 472px; transform: translate3d(0px, 0px, 0px); display: block;"></div></div></div>
</nav>