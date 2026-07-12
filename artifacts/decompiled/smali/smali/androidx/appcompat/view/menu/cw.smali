.class public Landroidx/appcompat/view/menu/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;
.implements Landroidx/appcompat/view/menu/rr0;
.implements Landroidx/appcompat/view/menu/b61;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/av;

.field public final b:Landroidx/appcompat/view/menu/a61;

.field public final c:Ljava/lang/Runnable;

.field public d:Landroidx/lifecycle/i;

.field public e:Landroidx/appcompat/view/menu/qr0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/a61;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/cw;->d:Landroidx/lifecycle/i;

    iput-object v0, p0, Landroidx/appcompat/view/menu/cw;->e:Landroidx/appcompat/view/menu/qr0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/cw;->a:Landroidx/appcompat/view/menu/av;

    iput-object p2, p0, Landroidx/appcompat/view/menu/cw;->b:Landroidx/appcompat/view/menu/a61;

    iput-object p3, p0, Landroidx/appcompat/view/menu/cw;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/f$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->d:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public b()Landroidx/appcompat/view/menu/gi;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->a:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->R0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Landroidx/appcompat/view/menu/ie0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ie0;-><init>()V

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/lifecycle/r$a;->e:Landroidx/appcompat/view/menu/gi$b;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Landroidx/lifecycle/p;->a:Landroidx/appcompat/view/menu/gi$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/cw;->a:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/p;->b:Landroidx/appcompat/view/menu/gi$b;

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->a:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->o()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/lifecycle/p;->c:Landroidx/appcompat/view/menu/gi$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/cw;->a:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/av;->o()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public c()Landroidx/appcompat/view/menu/a61;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cw;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->b:Landroidx/appcompat/view/menu/a61;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->d:Landroidx/lifecycle/i;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/appcompat/view/menu/a90;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/cw;->d:Landroidx/lifecycle/i;

    invoke-static {p0}, Landroidx/appcompat/view/menu/qr0;->a(Landroidx/appcompat/view/menu/rr0;)Landroidx/appcompat/view/menu/qr0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/cw;->e:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qr0;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->d:Landroidx/lifecycle/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->e:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/qr0;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->e:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/qr0;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public h()Landroidx/lifecycle/f;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cw;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->d:Landroidx/lifecycle/i;

    return-object v0
.end method

.method public l()Landroidx/appcompat/view/menu/pr0;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cw;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cw;->e:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qr0;->b()Landroidx/appcompat/view/menu/pr0;

    move-result-object v0

    return-object v0
.end method
