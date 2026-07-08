.class public final synthetic Landroidx/appcompat/view/menu/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/fl;

.field public final synthetic n:Ljava/lang/Runnable;

.field public final synthetic o:Landroidx/appcompat/view/menu/gl$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/fl;Ljava/lang/Runnable;Landroidx/appcompat/view/menu/gl$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/bl;->m:Landroidx/appcompat/view/menu/fl;

    iput-object p2, p0, Landroidx/appcompat/view/menu/bl;->n:Ljava/lang/Runnable;

    iput-object p3, p0, Landroidx/appcompat/view/menu/bl;->o:Landroidx/appcompat/view/menu/gl$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bl;->m:Landroidx/appcompat/view/menu/fl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bl;->n:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bl;->o:Landroidx/appcompat/view/menu/gl$b;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/fl;->c(Landroidx/appcompat/view/menu/fl;Ljava/lang/Runnable;Landroidx/appcompat/view/menu/gl$b;)V

    return-void
.end method
