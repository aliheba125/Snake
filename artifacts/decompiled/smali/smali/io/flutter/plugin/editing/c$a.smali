.class public Lio/flutter/plugin/editing/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/xz0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/c;-><init>(Landroid/view/View;Landroidx/appcompat/view/menu/xz0;Landroidx/appcompat/view/menu/bj0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/plugin/editing/c;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/editing/c;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0}, Lio/flutter/plugin/editing/c;->b(Lio/flutter/plugin/editing/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/c;->D(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/c;->k()V

    return-void
.end method

.method public c(ILandroidx/appcompat/view/menu/xz0$b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/c;->B(ILandroidx/appcompat/view/menu/xz0$b;)V

    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/c;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public e(IZ)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0, p1, p2}, Lio/flutter/plugin/editing/c;->h(Lio/flutter/plugin/editing/c;IZ)V

    return-void
.end method

.method public f(DD[D)V
    .locals 6

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/flutter/plugin/editing/c;->i(Lio/flutter/plugin/editing/c;DD[D)V

    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/xz0$e;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0}, Lio/flutter/plugin/editing/c;->b(Lio/flutter/plugin/editing/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/c;->C(Landroid/view/View;Landroidx/appcompat/view/menu/xz0$e;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0}, Lio/flutter/plugin/editing/c;->f(Lio/flutter/plugin/editing/c;)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0}, Lio/flutter/plugin/editing/c;->g(Lio/flutter/plugin/editing/c;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {p1}, Lio/flutter/plugin/editing/c;->g(Lio/flutter/plugin/editing/c;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->commit()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {p1}, Lio/flutter/plugin/editing/c;->g(Lio/flutter/plugin/editing/c;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->cancel()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0}, Lio/flutter/plugin/editing/c;->c(Lio/flutter/plugin/editing/c;)Lio/flutter/plugin/editing/c$c;

    move-result-object v0

    iget-object v0, v0, Lio/flutter/plugin/editing/c$c;->a:Lio/flutter/plugin/editing/c$c$a;

    sget-object v1, Lio/flutter/plugin/editing/c$c$a;->p:Lio/flutter/plugin/editing/c$c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0}, Lio/flutter/plugin/editing/c;->d(Lio/flutter/plugin/editing/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/c$a;->a:Lio/flutter/plugin/editing/c;

    invoke-static {v0}, Lio/flutter/plugin/editing/c;->b(Lio/flutter/plugin/editing/c;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/c;->e(Lio/flutter/plugin/editing/c;Landroid/view/View;)V

    :goto_0
    return-void
.end method
