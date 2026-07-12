.class public Landroidx/appcompat/view/menu/p0$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p0$f;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIIIZZ)Landroidx/appcompat/view/menu/p0$f;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/p0$f;

    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/p0$f;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
