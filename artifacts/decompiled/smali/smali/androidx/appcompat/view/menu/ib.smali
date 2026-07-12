.class public final Landroidx/appcompat/view/menu/ib;
.super Landroidx/appcompat/view/menu/s60;
.source "SourceFile"


# instance fields
.field public final q:Landroidx/appcompat/view/menu/y9;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y9;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s60;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ib;->q:Landroidx/appcompat/view/menu/y9;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ib;->w(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ib;->q:Landroidx/appcompat/view/menu/y9;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z60;->x()Landroidx/appcompat/view/menu/b70;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y9;->u(Landroidx/appcompat/view/menu/q60;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y9;->H(Ljava/lang/Throwable;)V

    return-void
.end method
