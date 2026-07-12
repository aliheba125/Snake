.class public final Landroidx/appcompat/view/menu/cg0$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/cg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/cg0$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/cg0$f;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/cg0$f;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/cg0$f;->a:Landroidx/appcompat/view/menu/cg0$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/dw;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/cg0$f;->c(Landroidx/appcompat/view/menu/dw;)V

    return-void
.end method

.method public static final c(Landroidx/appcompat/view/menu/dw;)V
    .locals 1

    const-string v0, "$onBackInvoked"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/dw;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/dw;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string v0, "onBackInvoked"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/dg0;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/dg0;-><init>(Landroidx/appcompat/view/menu/dw;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/window/OnBackInvokedDispatcher;

    check-cast p3, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p2, p3}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/window/OnBackInvokedDispatcher;

    check-cast p2, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
