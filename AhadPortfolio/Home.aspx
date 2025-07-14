<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PortfolioProject.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Abdul Ahad Arif – Portfolio</title>
    <style>
        :root{
            --bg:#0f1620;
            --teal:#00e0e0;
            --text:#f1f1f1;
            --muted:#9aa7b3;
            --radius:8px;
            --font:'Poppins','Segoe UI',sans-serif;
            --glow:rgba(0,224,224,.55);
        }

        *{box-sizing:border-box;margin:0;padding:0}
        html,body{height:100%}

        body{
            font-family:var(--font);
            background:var(--bg);
            color:var(--text);
            display:flex;
            justify-content:center;
            align-items:flex-start;
            padding:40px 12px;
        }

        .resume{
            width:900px;
            background:var(--bg);
            display:grid;
            grid-template-columns:1fr 260px;
            gap:30px;
            padding:60px 50px 50px;
            border-radius:12px;
            transition:transform .4s, box-shadow .4s;
            box-shadow:0 0 14px var(--glow);
        }
        .resume:hover{transform:translateY(-4px);box-shadow:0 0 22px 4px var(--glow)}

        section{
            border:2px solid var(--teal);
            padding:26px;
            margin-bottom:26px;
            border-radius:var(--radius);
            transition:border-color .3s, box-shadow .3s;
        }
        section:hover{border-color:var(--text);box-shadow:0 0 8px var(--glow)}
        section h2{
            font-size:18px;letter-spacing:1px;margin-bottom:16px;
            display:flex;align-items:center;gap:8px;
            color:var(--teal);text-transform:uppercase;
        }
        .iconbox{width:16px;height:16px;border:2px solid var(--teal);border-radius:3px}

        section p,section li{font-size:14px;line-height:1.55}
        ul{list-style:none}

        .badge, .contact-strip a{
            display:inline-block;
            border:2px solid var(--teal);
            padding:6px 18px;
            border-radius:var(--radius);
            margin:4px;
            font-size:13px;
            background:none;
            color:var(--text);
            cursor:pointer;
            transition:background .3s, color .3s, box-shadow .3s;
            box-shadow:0 0 6px var(--glow);
        }
        .badge:hover, .contact-strip a:hover{
            background:var(--teal);color:#000;box-shadow:0 0 16px var(--glow);
        }

        .table{display:grid;grid-template-columns:160px 1fr;gap:6px 28px}
        .table span.year{justify-self:end;font-size:13px;color:var(--muted)}

        .skill{display:flex;align-items:center;gap:12px;margin:6px 0}
        .bar{flex:1;height:6px;background:#233040;border-radius:3px;overflow:hidden}
        .bar div{height:100%;background:var(--teal)}

        .right{display:flex;flex-direction:column;align-items:center;gap:26px}
        .right img{
            width:230px;height:230px;object-fit:cover;
            border-radius:4px;border:4px solid var(--teal);
            transition:box-shadow .4s;
            box-shadow:0 0 10px var(--glow);
        }
        .right img:hover{box-shadow:0 0 18px 3px var(--glow)}

        .name-box{text-align:center}
        .name-box h1{font-size:28px;font-weight:bold}
        .name-box h1 span{color:var(--teal)}
        .name-box h4{
            font-size:13px;
            font-weight:500;
            letter-spacing:1px;
            color:var(--teal);
            margin-top:6px;
        }

        .contact-strip{
            background:#101827;
            display:flex;flex-wrap:wrap;justify-content:space-between;
            padding:18px;border-radius:var(--radius);
            gap:8px;font-size:13px;
            border:2px solid var(--teal);
        }
        .contact-strip div{flex:1 1 200px;text-align:center}
        .contact-strip b{display:block;font-weight:600;color:var(--teal);margin-bottom:4px}
        .contact-strip a{text-decoration:none}

        @media(max-width:768px){
            .resume{grid-template-columns:1fr;padding:40px 26px}
            .right{order:-1}
            .right img{width:180px;height:180px}
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="resume">

        <!-- LEFT -->
        <div>
            <section>
                <h2><span class="iconbox"></span>Profile</h2>
                <p>
                    Motivated computing graduate with a strong passion for Cloud Computing,
                    Networking, Databases and AI. Skilled in problem‑solving, adaptability,
                    and creativity, with a proven ability in analysis, collaboration,
                    and clear communication. Holds industry certifications in emerging tech.
                </p>
            </section>

            <section>
                <h2><span class="iconbox"></span>Education</h2>
                <div class="table">
                    <div><strong>St. Joseph’s University</strong><br /><em>MCA Student</em></div>
                    <span class="year">2024 – 2026</span>
                    <div><strong>CMR University</strong><br /><em>BCA – Cloud Computing</em></div>
                    <span class="year">2021 – 2024</span>
                </div>
            </section>

            <div style="display:grid;grid-template-columns:1fr 1fr;gap:26px">
                <section>
                    <h2><span class="iconbox"></span>Languages</h2>
                    <span class="badge">English</span><span class="badge">Hindi</span>
                    <span class="badge">Kannada</span><span class="badge">Urdu</span>
                    <span class="badge">Tamil</span>
                </section>
                <section>
                    <h2><span class="iconbox"></span>Hobbies</h2>
                    <span class="badge">Travel</span><span class="badge">Gaming</span>
                    <span class="badge">Music</span><span class="badge">Gym</span>
                    <span class="badge">Editing</span><span class="badge">Desiging</span>
                </section>
            </div>

            <section>
                <h2><span class="iconbox"></span>Skills</h2>
                <div class="skill"><span>Java</span><div class="bar"><div style="width:90%"></div></div></div>
                <div class="skill"><span>Python</span><div class="bar"><div style="width:85%"></div></div></div>
                <div class="skill"><span>HTML/CSS</span><div class="bar"><div style="width:80%"></div></div></div>
                <div class="skill"><span>JavaScript</span><div class="bar"><div style="width:75%"></div></div></div>
                <div class="skill"><span>AWS / GCP</span><div class="bar"><div style="width:70%"></div></div></div>
            </section>

            <section>
                <h2><span class="iconbox"></span>Job Experience</h2>
                <div class="table">
                    <div><strong>Web Developer</strong><br /><em>Software Company / Netherlands</em></div>
                    <span class="year">2025 (June) – Present</span>
                    <div><strong>Intern – SEO & Content</strong><br /><em>Clevertize</em></div>
                    <span class="year">2023 (3 mo)</span>
                    <div><strong>Volunteer Outreach</strong><br /><em>Infant Jesus Charity</em></div>
                    <span class="year">2022</span>
                </div>
            </section>

            <section>
    <h2><span class="iconbox"></span>Projects</h2>
    <ul>
        <li>Created a Restaurant reservation website <strong>(EATOPIA)</strong></li>
        <li>Built a portable Wi-Fi range extender</li>
        <li>Created an interactive React project <strong>(Photography website)</strong></li>
        <li>Created engaging HTML projects: Simple website, forms, calendar</li>
        <li>Built a voice-operated smart lighting system using IoT technology</li>
    </ul>
</section>


        </div>

        <!-- RIGHT -->
        <div class="right">
            <img src="images/Ahad.jpg" alt="Profile photo" />
            <div class="name-box">
                <h1><span>Abdul Ahad Arif</span></h1>
                <h4>Cloud Enthusiast / Web Developer</h4>
            </div>

            <h2 style="text-align:center; margin-bottom:12px; color:var(--teal); font-size:16px;">Interactive Tasks</h2>

            <section style="border:none;padding:0">
                <asp:Button ID="btnHelloWorld" CssClass="badge" runat="server" Text="Hello World" OnClick="btnHelloWorld_Click" />
                <asp:Button ID="btnDateTime" CssClass="badge" runat="server" Text="DateTime"     OnClick="btnDateTime_Click"   />
                <asp:Button ID="btnSimpleForm" CssClass="badge" runat="server" Text="Form"         OnClick="btnSimpleForm_Click" />
                <asp:Button ID="btnButtonClick" CssClass="badge" runat="server" Text="Button"       OnClick="btnButtonClick_Click" />
                <asp:Button ID="btnCalci"      CssClass="badge" runat="server" Text="Calc"         OnClick="btnCalci_Click"      />
            </section>

            <div class="contact-strip">
                <div><b>Email</b>ahad17arif@gmail.com</div>
                <div><b>LinkedIn</b><a href="https://www.linkedin.com/in/ahad-arif-b1b832262/" target="_blank">/in/ahad‑arif</a></div>
                <div><b>GitHub</b><a href="https://github.com/AhadArif" target="_blank">@AhadArif</a></div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
