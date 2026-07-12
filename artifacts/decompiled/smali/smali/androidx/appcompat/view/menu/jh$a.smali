.class public final Landroidx/appcompat/view/menu/jh$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/jh;->b(Landroidx/appcompat/view/menu/ok;Ljava/lang/Object;)Landroidx/appcompat/view/menu/j90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/o9$a;

.field public final synthetic o:Landroidx/appcompat/view/menu/ok;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o9$a;Landroidx/appcompat/view/menu/ok;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jh$a;->n:Landroidx/appcompat/view/menu/o9$a;

    iput-object p2, p0, Landroidx/appcompat/view/menu/jh$a;->o:Landroidx/appcompat/view/menu/ok;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/jh$a;->n:Landroidx/appcompat/view/menu/o9$a;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o9$a;->c()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jh$a;->n:Landroidx/appcompat/view/menu/o9$a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o9$a;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/jh$a;->n:Landroidx/appcompat/view/menu/o9$a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/jh$a;->o:Landroidx/appcompat/view/menu/ok;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ok;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o9$a;->b(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jh$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method
