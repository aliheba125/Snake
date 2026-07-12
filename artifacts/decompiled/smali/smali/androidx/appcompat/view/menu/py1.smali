.class public final Landroidx/appcompat/view/menu/py1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/oi1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/appcompat/view/menu/kx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/py1;->c:Landroidx/appcompat/view/menu/kx1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/py1;->a:Landroidx/appcompat/view/menu/oi1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/py1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/py1;->c:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->o0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/py1;->c:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->j0()Landroidx/appcompat/view/menu/p32;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/py1;->a:Landroidx/appcompat/view/menu/oi1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/py1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/p32;->y(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
