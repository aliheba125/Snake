.class public final Landroidx/appcompat/view/menu/jc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/mc1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mc1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jc1;->m:Landroidx/appcompat/view/menu/mc1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/jc1;->m:Landroidx/appcompat/view/menu/mc1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mc1;->v2(Landroidx/appcompat/view/menu/mc1;)Landroidx/appcompat/view/menu/lc1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/ef;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/ef;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/lc1;->c(Landroidx/appcompat/view/menu/ef;)V

    return-void
.end method
