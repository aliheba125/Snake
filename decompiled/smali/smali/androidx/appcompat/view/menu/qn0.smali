.class public abstract Landroidx/appcompat/view/menu/qn0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/qn0$a;
    }
.end annotation


# static fields
.field public static final m:Landroidx/appcompat/view/menu/qn0$a;

.field public static final n:Landroidx/appcompat/view/menu/qn0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/qn0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/qn0$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/qn0;->m:Landroidx/appcompat/view/menu/qn0$a;

    sget-object v0, Landroidx/appcompat/view/menu/hi0;->a:Landroidx/appcompat/view/menu/gi0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gi0;->b()Landroidx/appcompat/view/menu/qn0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/qn0;->n:Landroidx/appcompat/view/menu/qn0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroidx/appcompat/view/menu/qn0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qn0;->n:Landroidx/appcompat/view/menu/qn0;

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method
