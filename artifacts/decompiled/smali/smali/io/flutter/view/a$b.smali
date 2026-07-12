.class public Lio/flutter/view/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/view/a;


# direct methods
.method public constructor <init>(Lio/flutter/view/a;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->i(Lio/flutter/view/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->k(Lio/flutter/view/a;)Landroidx/appcompat/view/menu/z;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v1}, Lio/flutter/view/a;->j(Lio/flutter/view/a;)Landroidx/appcompat/view/menu/z$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/z;->g(Landroidx/appcompat/view/menu/z$b;)V

    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->k(Lio/flutter/view/a;)Landroidx/appcompat/view/menu/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/a;->l(Lio/flutter/view/a;Z)V

    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->k(Lio/flutter/view/a;)Landroidx/appcompat/view/menu/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/z;->g(Landroidx/appcompat/view/menu/z$b;)V

    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->k(Lio/flutter/view/a;)Landroidx/appcompat/view/menu/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z;->d()V

    :goto_0
    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->q(Lio/flutter/view/a;)Lio/flutter/view/a$k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->q(Lio/flutter/view/a;)Lio/flutter/view/a$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/a$b;->a:Lio/flutter/view/a;

    invoke-static {v1}, Lio/flutter/view/a;->r(Lio/flutter/view/a;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/flutter/view/a$k;->a(ZZ)V

    :cond_2
    return-void
.end method
