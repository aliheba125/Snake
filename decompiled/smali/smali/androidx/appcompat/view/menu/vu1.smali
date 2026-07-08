.class public final Landroidx/appcompat/view/menu/vu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Z

.field public final synthetic n:Landroidx/appcompat/view/menu/pu1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/pu1;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/vu1;->n:Landroidx/appcompat/view/menu/pu1;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/vu1;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu1;->n:Landroidx/appcompat/view/menu/pu1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/pu1;->a(Landroidx/appcompat/view/menu/pu1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/vu1;->m:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/o82;->H(Z)V

    return-void
.end method
