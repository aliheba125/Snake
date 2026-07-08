.class public final Landroidx/appcompat/view/menu/u62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/o82;

.field public final synthetic n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/s62;Landroidx/appcompat/view/menu/o82;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Landroidx/appcompat/view/menu/u62;->m:Landroidx/appcompat/view/menu/o82;

    iput-object p3, p0, Landroidx/appcompat/view/menu/u62;->n:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/u62;->m:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->o0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u62;->m:Landroidx/appcompat/view/menu/o82;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u62;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/o82;->y(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u62;->m:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->t0()V

    return-void
.end method
