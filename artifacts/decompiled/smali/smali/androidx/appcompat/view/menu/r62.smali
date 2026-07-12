.class public final synthetic Landroidx/appcompat/view/menu/r62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic m:Landroidx/appcompat/view/menu/s62;

.field public synthetic n:Landroidx/appcompat/view/menu/pt1;

.field public synthetic o:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/s62;Landroidx/appcompat/view/menu/pt1;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/r62;->m:Landroidx/appcompat/view/menu/s62;

    iput-object p2, p0, Landroidx/appcompat/view/menu/r62;->n:Landroidx/appcompat/view/menu/pt1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/r62;->o:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/r62;->m:Landroidx/appcompat/view/menu/s62;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r62;->n:Landroidx/appcompat/view/menu/pt1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r62;->o:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/s62;->e(Landroidx/appcompat/view/menu/pt1;Landroid/app/job/JobParameters;)V

    return-void
.end method
