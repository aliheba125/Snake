.class public final synthetic Landroidx/appcompat/view/menu/x31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/i41;

.field public final synthetic n:Landroidx/appcompat/view/menu/d21;

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/i41;Landroidx/appcompat/view/menu/d21;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/x31;->m:Landroidx/appcompat/view/menu/i41;

    iput-object p2, p0, Landroidx/appcompat/view/menu/x31;->n:Landroidx/appcompat/view/menu/d21;

    iput p3, p0, Landroidx/appcompat/view/menu/x31;->o:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/x31;->p:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/x31;->m:Landroidx/appcompat/view/menu/i41;

    iget-object v1, p0, Landroidx/appcompat/view/menu/x31;->n:Landroidx/appcompat/view/menu/d21;

    iget v2, p0, Landroidx/appcompat/view/menu/x31;->o:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/x31;->p:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/i41;->a(Landroidx/appcompat/view/menu/i41;Landroidx/appcompat/view/menu/d21;ILjava/lang/Runnable;)V

    return-void
.end method
