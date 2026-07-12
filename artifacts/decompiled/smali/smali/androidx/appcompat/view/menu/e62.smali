.class public abstract Landroidx/appcompat/view/menu/e62;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/c62;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c62;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/e62;->a:Ljava/util/Iterator;

    new-instance v0, Landroidx/appcompat/view/menu/i62;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/i62;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/e62;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public static a()Ljava/lang/Iterable;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/e62;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/e62;->a:Ljava/util/Iterator;

    return-object v0
.end method
