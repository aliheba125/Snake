.class public Landroidx/appcompat/view/menu/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/et$c;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/et$c;

.field public b:Lio/flutter/embedding/engine/a;

.field public c:Landroidx/appcompat/view/menu/nu;

.field public d:Landroidx/appcompat/view/menu/mi0;

.field public e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Integer;

.field public k:Lio/flutter/embedding/engine/b;

.field public final l:Landroidx/appcompat/view/menu/iu;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/et$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/et;-><init>(Landroidx/appcompat/view/menu/et$c;Lio/flutter/embedding/engine/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/et$c;Lio/flutter/embedding/engine/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/et$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/et$a;-><init>(Landroidx/appcompat/view/menu/et;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->l:Landroidx/appcompat/view/menu/iu;

    iput-object p1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/et;->h:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/et;->k:Lio/flutter/embedding/engine/b;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/et;)Landroidx/appcompat/view/menu/et$c;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/et;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/et;->g:Z

    return p0
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/et;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/et;->g:Z

    return p1
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/et;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/et;->h:Z

    return p1
.end method


# virtual methods
.method public A(I[Ljava/lang/String;[I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\npermissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngrantResults: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/i1;->b(I[Ljava/lang/String;[I)Z

    goto :goto_0

    :cond_0
    const-string p1, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public B(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    if-eqz p1, :cond_0

    const-string v0, "plugins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/et$c;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->t()Landroidx/appcompat/view/menu/jp0;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/jp0;->j([B)V

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/et$c;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object p1

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/i1;->f(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public C()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Landroidx/appcompat/view/menu/x80;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x80;->e()V

    :cond_0
    return-void
.end method

.method public D(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving framework and plugins an opportunity to save state."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Landroidx/appcompat/view/menu/jp0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jp0;->h()[B

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/i1;->h(Landroid/os/Bundle;)V

    const-string v1, "plugins"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public E()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->k()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nu;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Landroidx/appcompat/view/menu/x80;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x80;->d()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->j:Ljava/lang/Integer;

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nu;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->k(I)V

    :cond_1
    return-void
.end method

.method public G(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/et;->h:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Landroidx/appcompat/view/menu/si;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/si;->h()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->w()Landroidx/appcompat/view/menu/ry0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ry0;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->k(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bj0;->Z(I)V

    :cond_1
    return-void
.end method

.method public H()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/i1;->i()V

    goto :goto_0

    :cond_0
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public I(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Landroidx/appcompat/view/menu/x80;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/x80;->a()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Landroidx/appcompat/view/menu/x80;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/x80;->f()V

    :cond_2
    :goto_1
    return-void
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->d:Landroidx/appcompat/view/menu/mi0;

    return-void
.end method

.method public K()V
    .locals 5

    const-string v0, "Setting up FlutterEngine."

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\'"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/ht;->b()Landroidx/appcompat/view/menu/ht;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ht;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, Landroidx/appcompat/view/menu/et;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, Landroidx/appcompat/view/menu/et$c;->D(Landroid/content/Context;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Landroidx/appcompat/view/menu/et;->f:Z

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/kt;->b()Landroidx/appcompat/view/menu/kt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/kt;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/b;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lio/flutter/embedding/engine/b$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/flutter/embedding/engine/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/et;->g(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/b$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/b;->a(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, Landroidx/appcompat/view/menu/et;->f:Z

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngineGroup did not exist in the FlutterEngineGroupCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->k:Lio/flutter/embedding/engine/b;

    if-nez v0, :cond_5

    new-instance v0, Lio/flutter/embedding/engine/b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->z()Landroidx/appcompat/view/menu/eu;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/eu;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/b;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lio/flutter/embedding/engine/b$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/b$b;->h(Z)Lio/flutter/embedding/engine/b$b;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->r()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/b$b;->l(Z)Lio/flutter/embedding/engine/b$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/et;->g(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/b;->a(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, Landroidx/appcompat/view/menu/et;->f:Z

    return-void
.end method

.method public L(Landroid/window/BackEvent;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding startBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Landroidx/appcompat/view/menu/m7;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/m7;->d(Landroid/window/BackEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invoked startBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public M(Landroid/window/BackEvent;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding updateBackGestureProgress() to FlutterEngine."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Landroidx/appcompat/view/menu/m7;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/m7;->e(Landroid/window/BackEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invoked updateBackGestureProgress() before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->d:Landroidx/appcompat/view/menu/mi0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mi0;->E()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->e()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The internal FlutterEngine created by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->m()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/b$b;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/pt;->e()Landroidx/appcompat/view/menu/pt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt;->c()Landroidx/appcompat/view/menu/st;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/st;->g()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Landroidx/appcompat/view/menu/si$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/view/menu/si$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/et;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    :cond_2
    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/b$b;->i(Landroidx/appcompat/view/menu/si$b;)Lio/flutter/embedding/engine/b$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/b$b;->k(Ljava/lang/String;)Lio/flutter/embedding/engine/b$b;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/b$b;->j(Ljava/util/List;)Lio/flutter/embedding/engine/b$b;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding cancelBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Landroidx/appcompat/view/menu/m7;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m7;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked cancelBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding commitBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Landroidx/appcompat/view/menu/m7;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m7;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked commitBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/nu;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->A()Landroidx/appcompat/view/menu/uo0;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/uo0;->m:Landroidx/appcompat/view/menu/uo0;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/et$b;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/et$b;-><init>(Landroidx/appcompat/view/menu/et;Landroidx/appcompat/view/menu/nu;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Landroidx/appcompat/view/menu/si;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/si;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/et;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/et$c;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing Dart entrypoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/et$c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", library uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "\"\""

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", and sending initial route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "FlutterActivityAndFragmentDelegate"

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->o()Landroidx/appcompat/view/menu/qe0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/qe0;->c(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {}, Landroidx/appcompat/view/menu/pt;->e()Landroidx/appcompat/view/menu/pt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt;->c()Landroidx/appcompat/view/menu/st;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/st;->g()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Landroidx/appcompat/view/menu/si$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/view/menu/si$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v2, Landroidx/appcompat/view/menu/si$b;

    iget-object v3, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/et$c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Landroidx/appcompat/view/menu/si$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Landroidx/appcompat/view/menu/si;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/si;->e(Landroidx/appcompat/view/menu/si$b;Ljava/util/List;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->d()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlutterActivityAndFragmentDelegate\'s getAppComponent should only be queried after onAttach, when the host\'s activity should always be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public n()Lio/flutter/embedding/engine/a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/et;->i:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/et;->f:Z

    return v0
.end method

.method public final q(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(IILandroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/i1;->a(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public s(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->K()V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/et$c;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string v0, "Attaching FlutterEngine to the Activity that owns this delegate."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->h()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroidx/appcompat/view/menu/i1;->d(Landroidx/appcompat/view/menu/qp;Landroidx/lifecycle/f;)V

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/et$c;->d()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0, v1}, Landroidx/appcompat/view/menu/et$c;->v(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Landroidx/appcompat/view/menu/mi0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/et;->d:Landroidx/appcompat/view/menu/mi0;

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/et$c;->F(Lio/flutter/embedding/engine/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/et;->i:Z

    return-void
.end method

.method public t()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->o()Landroidx/appcompat/view/menu/qe0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qe0;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public u(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;
    .locals 4

    const-string p1, "Creating FlutterView."

    const-string p2, "FlutterActivityAndFragmentDelegate"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/et$c;->A()Landroidx/appcompat/view/menu/uo0;

    move-result-object p1

    sget-object p3, Landroidx/appcompat/view/menu/uo0;->m:Landroidx/appcompat/view/menu/uo0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p3, :cond_1

    new-instance p1, Landroidx/appcompat/view/menu/fu;

    iget-object p3, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p3}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->E()Landroidx/appcompat/view/menu/a21;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/a21;->n:Landroidx/appcompat/view/menu/a21;

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p1, p3, v0}, Landroidx/appcompat/view/menu/fu;-><init>(Landroid/content/Context;Z)V

    iget-object p3, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p3, p1}, Landroidx/appcompat/view/menu/et$c;->G(Landroidx/appcompat/view/menu/fu;)V

    new-instance p3, Landroidx/appcompat/view/menu/nu;

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Landroidx/appcompat/view/menu/nu;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/fu;)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/appcompat/view/menu/hu;

    iget-object p3, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p3}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/hu;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p3}, Landroidx/appcompat/view/menu/et$c;->E()Landroidx/appcompat/view/menu/a21;

    move-result-object p3

    sget-object v2, Landroidx/appcompat/view/menu/a21;->m:Landroidx/appcompat/view/menu/a21;

    if-ne p3, v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p3, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p3, p1}, Landroidx/appcompat/view/menu/et$c;->y(Landroidx/appcompat/view/menu/hu;)V

    new-instance p3, Landroidx/appcompat/view/menu/nu;

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Landroidx/appcompat/view/menu/nu;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/hu;)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    iget-object p3, p0, Landroidx/appcompat/view/menu/et;->l:Landroidx/appcompat/view/menu/iu;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/nu;->l(Landroidx/appcompat/view/menu/iu;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/et$c;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Attaching FlutterEngine to FlutterView."

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    iget-object p2, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/nu;->n(Lio/flutter/embedding/engine/a;)V

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {p1, p4}, Landroid/view/View;->setId(I)V

    if-eqz p5, :cond_4

    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/et;->j(Landroidx/appcompat/view/menu/nu;)V

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    return-object p1
.end method

.method public v()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nu;->s()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->c:Landroidx/appcompat/view/menu/nu;

    iget-object v1, p0, Landroidx/appcompat/view/menu/et;->l:Landroidx/appcompat/view/menu/iu;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nu;->y(Landroidx/appcompat/view/menu/iu;)V

    :cond_1
    return-void
.end method

.method public w()V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/et;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onDetach()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {v0, v2}, Landroidx/appcompat/view/menu/et$c;->t(Lio/flutter/embedding/engine/a;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Detaching FlutterEngine from the Activity that owns this Fragment."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/i1;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/i1;->g()V

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->d:Landroidx/appcompat/view/menu/mi0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mi0;->q()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/et;->d:Landroidx/appcompat/view/menu/mi0;

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Landroidx/appcompat/view/menu/x80;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x80;->b()V

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->g()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/appcompat/view/menu/ht;->b()Landroidx/appcompat/view/menu/ht;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/et$c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ht;->d(Ljava/lang/String;)V

    :cond_5
    iput-object v1, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/et;->i:Z

    return-void
.end method

.method public x(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onNewIntent() to FlutterEngine and sending pushRouteInformation message."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Landroidx/appcompat/view/menu/i1;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/i1;->e(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/et;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->o()Landroidx/appcompat/view/menu/qe0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/qe0;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->a:Landroidx/appcompat/view/menu/et$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/et$c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Landroidx/appcompat/view/menu/x80;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x80;->c()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    const-string v0, "onPostResume()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->l()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/et;->N()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bj0;->Y()V

    goto :goto_0

    :cond_0
    const-string v0, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
