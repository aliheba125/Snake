.class public Landroidx/appcompat/view/menu/q0$b;
.super Landroidx/appcompat/view/menu/q0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/q0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/q0$a;-><init>(Landroidx/appcompat/view/menu/q0;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q0$a;->a:Landroidx/appcompat/view/menu/q0;

    invoke-static {p2}, Landroidx/appcompat/view/menu/p0;->C0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/appcompat/view/menu/p0;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/q0;->a(ILandroidx/appcompat/view/menu/p0;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
