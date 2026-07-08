.class public final Landroidx/appcompat/view/menu/h8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/h8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Landroidx/appcompat/view/menu/tz0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/h8;->e(Ljava/util/Locale;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h8$a;->c(Z)V

    return-void
.end method

.method public static b(Z)Landroidx/appcompat/view/menu/h8;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/appcompat/view/menu/h8;->h:Landroidx/appcompat/view/menu/h8;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/h8;->g:Landroidx/appcompat/view/menu/h8;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/h8;
    .locals 4

    iget v0, p0, Landroidx/appcompat/view/menu/h8$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h8$a;->c:Landroidx/appcompat/view/menu/tz0;

    sget-object v1, Landroidx/appcompat/view/menu/h8;->d:Landroidx/appcompat/view/menu/tz0;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h8$a;->a:Z

    invoke-static {v0}, Landroidx/appcompat/view/menu/h8$a;->b(Z)Landroidx/appcompat/view/menu/h8;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/h8;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/h8$a;->a:Z

    iget v2, p0, Landroidx/appcompat/view/menu/h8$a;->b:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/h8$a;->c:Landroidx/appcompat/view/menu/tz0;

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/h8;-><init>(ZILandroidx/appcompat/view/menu/tz0;)V

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h8$a;->a:Z

    sget-object p1, Landroidx/appcompat/view/menu/h8;->d:Landroidx/appcompat/view/menu/tz0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/h8$a;->c:Landroidx/appcompat/view/menu/tz0;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/appcompat/view/menu/h8$a;->b:I

    return-void
.end method
