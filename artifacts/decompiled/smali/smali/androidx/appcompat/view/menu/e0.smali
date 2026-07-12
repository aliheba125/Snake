.class public abstract Landroidx/appcompat/view/menu/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/e0$b;,
        Landroidx/appcompat/view/menu/e0$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityManager;Landroidx/appcompat/view/menu/e0$a;)Z
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/e0$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/e0$b;-><init>(Landroidx/appcompat/view/menu/e0$a;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityManager;Landroidx/appcompat/view/menu/e0$a;)Z
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/e0$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/e0$b;-><init>(Landroidx/appcompat/view/menu/e0$a;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method
