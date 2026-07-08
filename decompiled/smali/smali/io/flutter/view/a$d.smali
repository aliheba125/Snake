.class public Lio/flutter/view/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/a;-><init>(Landroid/view/View;Landroidx/appcompat/view/menu/z;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Landroidx/appcompat/view/menu/wi0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic b:Lio/flutter/view/a;


# direct methods
.method public constructor <init>(Lio/flutter/view/a;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/a$d;->b:Lio/flutter/view/a;

    iput-object p2, p0, Lio/flutter/view/a$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/a$d;->b:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->i(Lio/flutter/view/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lio/flutter/view/a$d;->b:Lio/flutter/view/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/a;->l(Lio/flutter/view/a;Z)V

    iget-object v0, p0, Lio/flutter/view/a$d;->b:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->h(Lio/flutter/view/a;)V

    :cond_1
    iget-object v0, p0, Lio/flutter/view/a$d;->b:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->q(Lio/flutter/view/a;)Lio/flutter/view/a$k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/a$d;->b:Lio/flutter/view/a;

    invoke-static {v0}, Lio/flutter/view/a;->q(Lio/flutter/view/a;)Lio/flutter/view/a$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/a$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lio/flutter/view/a$k;->a(ZZ)V

    :cond_2
    return-void
.end method
