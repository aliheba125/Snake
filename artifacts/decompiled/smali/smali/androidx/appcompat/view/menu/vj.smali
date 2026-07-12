.class public final synthetic Landroidx/appcompat/view/menu/vj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/yj;

.field public final synthetic n:Landroidx/appcompat/view/menu/d21;

.field public final synthetic o:Landroidx/appcompat/view/menu/n21;

.field public final synthetic p:Landroidx/appcompat/view/menu/ap;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/yj;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/n21;Landroidx/appcompat/view/menu/ap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/vj;->m:Landroidx/appcompat/view/menu/yj;

    iput-object p2, p0, Landroidx/appcompat/view/menu/vj;->n:Landroidx/appcompat/view/menu/d21;

    iput-object p3, p0, Landroidx/appcompat/view/menu/vj;->o:Landroidx/appcompat/view/menu/n21;

    iput-object p4, p0, Landroidx/appcompat/view/menu/vj;->p:Landroidx/appcompat/view/menu/ap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/vj;->m:Landroidx/appcompat/view/menu/yj;

    iget-object v1, p0, Landroidx/appcompat/view/menu/vj;->n:Landroidx/appcompat/view/menu/d21;

    iget-object v2, p0, Landroidx/appcompat/view/menu/vj;->o:Landroidx/appcompat/view/menu/n21;

    iget-object v3, p0, Landroidx/appcompat/view/menu/vj;->p:Landroidx/appcompat/view/menu/ap;

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/yj;->b(Landroidx/appcompat/view/menu/yj;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/n21;Landroidx/appcompat/view/menu/ap;)V

    return-void
.end method
