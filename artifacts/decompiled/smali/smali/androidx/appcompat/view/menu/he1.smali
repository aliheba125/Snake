.class public final Landroidx/appcompat/view/menu/he1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:J

.field public final synthetic o:Landroidx/appcompat/view/menu/oh1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/oh1;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/he1;->o:Landroidx/appcompat/view/menu/oh1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/he1;->m:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/appcompat/view/menu/he1;->n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/he1;->o:Landroidx/appcompat/view/menu/oh1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/he1;->m:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/appcompat/view/menu/he1;->n:J

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/oh1;->y(Landroidx/appcompat/view/menu/oh1;Ljava/lang/String;J)V

    return-void
.end method
