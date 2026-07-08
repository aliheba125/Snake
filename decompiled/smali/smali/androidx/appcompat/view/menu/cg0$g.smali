.class public final Landroidx/appcompat/view/menu/cg0$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/cg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/cg0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/cg0$g;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/cg0$g;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/cg0$g;->a:Landroidx/appcompat/view/menu/cg0$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/dw;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/fw;",
            "Landroidx/appcompat/view/menu/fw;",
            "Landroidx/appcompat/view/menu/dw;",
            "Landroidx/appcompat/view/menu/dw;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string v0, "onBackStarted"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackProgressed"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackInvoked"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackCancelled"

    invoke-static {p4, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/cg0$g$a;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/cg0$g$a;-><init>(Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/dw;)V

    return-object v0
.end method
