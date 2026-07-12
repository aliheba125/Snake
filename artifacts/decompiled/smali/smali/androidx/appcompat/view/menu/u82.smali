.class public final Landroidx/appcompat/view/menu/u82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/r92;

.field public final synthetic n:Landroidx/appcompat/view/menu/o82;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/r92;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/u82;->n:Landroidx/appcompat/view/menu/o82;

    iput-object p2, p0, Landroidx/appcompat/view/menu/u82;->m:Landroidx/appcompat/view/menu/r92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/u82;->n:Landroidx/appcompat/view/menu/o82;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u82;->m:Landroidx/appcompat/view/menu/r92;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/o82;->w(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/r92;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u82;->n:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->s0()V

    return-void
.end method
