.class public final synthetic Landroidx/appcompat/view/menu/nl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Z

.field public final synthetic o:Landroidx/appcompat/view/menu/bz0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nl0;->m:Landroid/content/Context;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/nl0;->n:Z

    iput-object p3, p0, Landroidx/appcompat/view/menu/nl0;->o:Landroidx/appcompat/view/menu/bz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/nl0;->m:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nl0;->n:Z

    iget-object v2, p0, Landroidx/appcompat/view/menu/nl0;->o:Landroidx/appcompat/view/menu/bz0;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/ol0;->a(Landroid/content/Context;ZLandroidx/appcompat/view/menu/bz0;)V

    return-void
.end method
